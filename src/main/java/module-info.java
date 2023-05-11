module at.spengergasse.medical_practice {
    requires javafx.controls;
    requires javafx.fxml;

    // requirements for hibernate
    requires java.persistence;
    requires java.sql;
    requires org.hibernate.orm.core;
    requires net.bytebuddy;
    requires com.fasterxml.classmate;
    requires java.xml.bind;

    requires com.calendarfx.view;

    opens at.spengergasse.medical_practice to javafx.fxml;
    opens at.spengergasse.medical_practice.entities to org.hibernate.orm.core;
    exports at.spengergasse.medical_practice;
}