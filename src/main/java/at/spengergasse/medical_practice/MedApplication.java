package at.spengergasse.medical_practice;

import at.spengergasse.medical_practice.entities.Patient;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

public class MedApplication extends Application {
    private static EntityManager entityManager;
    @Override
    public void start(Stage stage) throws IOException {
        ResourceBundle bundle = ResourceBundle.getBundle("UIResources");
        FXMLLoader fxmlLoader = new FXMLLoader(MedApplication.class.getResource("patient-view.fxml"), bundle);
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle(bundle.getString("patients"));
        stage.setScene(scene);
        stage.show();
    }

    public static EntityManager getEntityManager() {
        return entityManager;
    }

    public static void main(String[] args) {
        entityManager = Persistence.createEntityManagerFactory("med")
                        .createEntityManager();
        launch();
    }
}