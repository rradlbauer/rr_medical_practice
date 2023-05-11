package at.spengergasse.medical_practice;

import at.spengergasse.medical_practice.entities.Adress;
import at.spengergasse.medical_practice.entities.Medication;
import at.spengergasse.medical_practice.entities.Patient;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.Initializable;
import javafx.scene.control.ListView;
import javafx.scene.control.TextField;
import javafx.stage.WindowEvent;

import javax.persistence.EntityManager;
import java.net.URL;
import java.util.ResourceBundle;

public class AdressView implements Initializable {
    public ListView<Adress> adressList;
    public TextField tfStreet;
    public TextField tfZIP;
    public TextField tfCity;

    private Patient patient;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        adressList.getSelectionModel().selectedItemProperty().addListener(new ChangeListener<Adress>() {
            @Override
            public void changed(ObservableValue<? extends Adress> observable, Adress oldValue, Adress newValue) {
                updateData(oldValue);
                updateFields(newValue);
            }
        });
    }

    private void updateFields(Adress a){
        if (a != null){
            tfZIP.setText(String.valueOf(a.getZip()));
            tfCity.setText(a.getCity());
            tfStreet.setText(a.getStreet());
        } else{
            tfZIP.setText(null);
            tfCity.setText(null);
            tfStreet.setText(null);
        }
    }

    private void updateData(Adress a){
        if (a != null){
            a.setCity(tfCity.getText());
            a.setZip(Integer.parseInt(tfZIP.getText()));
            a.setStreet(tfStreet.getText());
            MedApplication.getEntityManager().getTransaction().begin();
            MedApplication.getEntityManager().getTransaction().commit();
        }
    }

    public void newAdress(ActionEvent actionEvent) {
        Adress a = new Adress();
        a.setCity("...");
        adressList.getItems().add(a);
        MedApplication.getEntityManager().persist(a);
        patient.add(a);
        MedApplication.getEntityManager().getTransaction().begin();
        MedApplication.getEntityManager().getTransaction().commit();
    }

    public void deleteAdress(ActionEvent actionEvent) {
        Adress a = adressList.getSelectionModel().getSelectedItem();
        if (a != null){
            MedApplication.getEntityManager().remove(a);
            MedApplication.getEntityManager().getTransaction().begin();
            MedApplication.getEntityManager().getTransaction().commit();
            adressList.getItems().remove(a);
        }
    }

    public void setPatient(Patient p){
        patient = p;
        adressList.getItems().addAll(p.getAdresses());
    }

    public void close(){
        Adress a = adressList.getSelectionModel().getSelectedItem();
        updateData(a);
    }
}
