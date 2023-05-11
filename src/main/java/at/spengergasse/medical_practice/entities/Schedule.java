package at.spengergasse.medical_practice.entities;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@NamedQuery(name="Schedule.findAll", query = "SELECT s FROM Schedule s")
public class Schedule {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
     @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;
    public enum CAUSE{FIRST, FOLLOW_UP}
    private CAUSE cause;
    private LocalDateTime begin;
    private LocalDateTime end;

    @Override
    public String toString() {
        return "Schedule{" +
                ", patient=" + patient.getName() +
                ", cause=" + cause +
                ", begin=" + begin +
                ", end=" + end +
                '}';
    }


    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public CAUSE getCause() {
        return cause;
    }

    public void setCause(CAUSE cause) {
        this.cause = cause;
    }

    public LocalDateTime getBegin() {
        return begin;
    }

    public void setBegin(LocalDateTime begin) {
        this.begin = begin;
    }

    public LocalDateTime getEnd() {
        return end;
    }

    public void setEnd(LocalDateTime end) {
        this.end = end;
    }
}
