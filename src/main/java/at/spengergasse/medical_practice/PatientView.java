package at.spengergasse.medical_practice;

import at.spengergasse.medical_practice.entities.Insurance;
import at.spengergasse.medical_practice.entities.Patient;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;
import javafx.util.Callback;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class PatientView implements Initializable {
    public ListView<Patient> patientsList;
    public TextField tfName;
    public DatePicker dpBirth;
    public TextField tfSSN;
    public RadioButton rbFemale;
    public RadioButton rbMale;
    public ComboBox<Insurance> cbInsurance;
    public Label lbAdress;
    public TextField tfPhone;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        // fill patients list
        patientsList.getItems().addAll(MedApplication.getEntityManager().createNamedQuery("Patients.All", Patient.class).getResultList());
        patientsList.setCellFactory(new Callback<ListView<Patient>, ListCell<Patient>>() {
            @Override
            public ListCell<Patient> call(ListView<Patient> param) {
                return new ListCell<>(){
                    @Override
                    protected void updateItem(Patient p, boolean empty) {
                        super.updateItem(p, empty);
                        if (p != null)setText(p.getName());
                    }
                };
            }
        });
        // fill combobox (insurance)
        cbInsurance.getItems().addAll(MedApplication.getEntityManager().createNamedQuery("Insurance.All", Insurance.class).getResultList());


        // on selection in patients list
        patientsList.getSelectionModel().selectedItemProperty().addListener(new ChangeListener<Patient>() {
            @Override
            public void changed(ObservableValue<? extends Patient> observable, Patient oldValue, Patient newValue) {
                updateData(oldValue);
                updateFields(newValue);
            }
        });
    }

    private void updateFields(Patient p){
        if (p != null){
            tfName.setText(p.getName());
            tfSSN.setText(String.valueOf(p.getSvnr()));
            dpBirth.setValue(p.getBirth());
            tfPhone.setText(p.getPhone());
            switch (p.getGender()){
                case 'f': rbFemale.setSelected(true); break;
                case 'm': rbMale.setSelected(true); break;
                default: rbMale.setSelected(false); rbFemale.setSelected(false); break;
            }
            cbInsurance.getSelectionModel().select(p.getInsurance());
            if (p.getAdresses().size() > 0){
                lbAdress.setText(p.getAdresses().get(0).toString());
            } else {
                lbAdress.setText(null);
            }
        } else {
            tfName.setText(null);
            tfSSN.setText(null);
            dpBirth.setValue(null);
            tfPhone.setText(null);
            rbFemale.setSelected(false);
            rbMale.setSelected(false);
            cbInsurance.getSelectionModel().select(null);
            lbAdress.setText(null);
        }
    }

    private void updateData(Patient p){
        if (p != null){
            p.setName(tfName.getText());
            p.setSvnr(Long.parseLong(tfSSN.getText()));
            p.setBirth(dpBirth.getValue());
            p.setPhone(tfPhone.getText());
            if (rbFemale.isSelected()) p.setGender('f');
            if (rbMale.isSelected()) p.setGender('m');
            p.setInsurance(cbInsurance.getSelectionModel().getSelectedItem());

            MedApplication.getEntityManager().getTransaction().begin();
            MedApplication.getEntityManager().getTransaction().commit();
        }
    }

    public void newPatient(ActionEvent actionEvent) {
        Patient p = new Patient();
        p.setName("N.N.");
        patientsList.getItems().add(p);
        patientsList.getSelectionModel().select(p);
        MedApplication.getEntityManager().persist(p);

        MedApplication.getEntityManager().getTransaction().begin();
        MedApplication.getEntityManager().getTransaction().commit();
    }

    public void editAdresses(ActionEvent actionEvent) throws IOException {
        Patient p = patientsList.getSelectionModel().getSelectedItem();
        if (p != null) {
            ResourceBundle bundle = ResourceBundle.getBundle("UIResources");
            FXMLLoader loader = new FXMLLoader(getClass().getResource("adress-view.fxml"), bundle);
            Scene scene = new Scene(loader.load());
            Stage stage = new Stage();
            stage.setTitle(bundle.getString("title_adress") + p.getName());
            stage.setScene(scene);
            stage.show();
            AdressView view = loader.getController();
            view.setPatient(p);
            stage.setOnCloseRequest(new EventHandler<WindowEvent>() {
                @Override
                public void handle(WindowEvent event) {
                    view.close();
                    if (p.getAdresses().size() > 0){
                        lbAdress.setText(p.getAdresses().get(0).toString());
                    } else {
                        lbAdress.setText(null);
                    }
                }
            });
        }
    }

    public void showSchedules(ActionEvent actionEvent) throws IOException {
        ResourceBundle bundle = ResourceBundle.getBundle("UIResources");
        FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("scheduler-view.fxml"), bundle);
        Scene scene = new Scene(fxmlLoader.load());
        Stage stage = new Stage();
        stage.setTitle(bundle.getString("schedules"));
        stage.setScene(scene);
        stage.show();
        SchedulerView scheduler = fxmlLoader.getController();
        scheduler.setPatient(patientsList.getSelectionModel().getSelectedItem());
    }
}
