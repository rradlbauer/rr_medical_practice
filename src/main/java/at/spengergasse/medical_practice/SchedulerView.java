package at.spengergasse.medical_practice;

import at.spengergasse.medical_practice.entities.Patient;
import at.spengergasse.medical_practice.entities.Schedule;
import com.calendarfx.model.*;
import com.calendarfx.view.CalendarView;
import com.calendarfx.view.DateControl;
import javafx.application.Application;
import javafx.collections.ObservableList;
import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.event.EventType;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.ChoiceDialog;
import javafx.scene.control.ContextMenu;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.util.Callback;

import javax.persistence.TypedQuery;
import java.io.IOException;
import java.net.URL;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ResourceBundle;

public class SchedulerView implements Initializable {
    private final static ResourceBundle bundle = ResourceBundle.getBundle("UIResources");
    @FXML private CalendarView calendarView;

    private Patient patient;
    private Calendar calendar;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        calendarView.setShowAddCalendarButton(false);
        calendar = calendarView.getCalendarSources().get(0).getCalendars().get(0);
        loadEvents();
        calendarView.setEntryDetailsCallback(new Callback<DateControl.EntryDetailsParameter, Boolean>() {
            @Override
            public Boolean call(DateControl.EntryDetailsParameter param) {
                return details(param.getEntry());
            }
        });

        calendar.addEventHandler(new EventHandler<CalendarEvent>() {
            @Override
            public void handle(CalendarEvent event) {
                handleEvent(event);
            }
        });
    }

    private void handleEvent(CalendarEvent event) {
        Entry entry = event.getEntry();
        Schedule schedule = (Schedule) entry.getUserObject();
        if (schedule != null) {
            if (event.isEntryRemoved()) {
                MedApplication.getEntityManager().remove(schedule);
            } else {
                schedule.setBegin(LocalDateTime.of(entry.getStartDate(), entry.getStartTime()));
                schedule.setEnd(LocalDateTime.of(entry.getEndDate(), entry.getEndTime()));
            }
            MedApplication.getEntityManager().getTransaction().begin();
            MedApplication.getEntityManager().getTransaction().commit();
        }
    }

    private void loadEvents(){
        TypedQuery<Schedule> query = MedApplication.getEntityManager()
                .createNamedQuery("Schedule.findAll", Schedule.class);
        for (Schedule s : query.getResultList()){
            Entry entry = new Entry();
            entry.setTitle(s.getPatient().getName());
            entry.setUserObject(s);
            entry.setInterval(s.getBegin(), s.getEnd());
            calendar.addEntry(entry);
        }
    }

    private boolean details(Entry entry){
        try {
            Object o = entry.getUserObject();
            Schedule schedule;
            if (o != null && o instanceof Schedule) {
                schedule = (Schedule) o;
            } else {
                schedule = new Schedule();
                schedule.setPatient(patient);
                MedApplication.getEntityManager().persist(schedule);
                entry.setUserObject(schedule);
            }
            TypedQuery<Patient> query = MedApplication.getEntityManager()
                    .createNamedQuery("Patients.All", Patient.class);
            ChoiceDialog<Patient> choiceDialog = new ChoiceDialog<>(schedule.getPatient(), query.getResultList());
            choiceDialog.setTitle(bundle.getString("patient"));
            choiceDialog.setHeaderText(bundle.getString("chose"));
            choiceDialog.showAndWait();
            patient = choiceDialog.getSelectedItem();
            schedule.setPatient(patient);
            entry.setTitle(schedule.getPatient().getName());
            schedule.setBegin(LocalDateTime.of(entry.getStartDate(), entry.getStartTime()));
            schedule.setEnd(LocalDateTime.of(entry.getEndDate(), entry.getEndTime()));

            MedApplication.getEntityManager().getTransaction().begin();
            MedApplication.getEntityManager().getTransaction().commit();

            return true;
        } catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}
