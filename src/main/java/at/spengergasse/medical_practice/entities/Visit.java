package at.spengergasse.medical_practice.entities;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Visit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;
    private LocalDateTime date;
    @OneToOne
    @JoinColumn(name = "anamnesis_id")
    private Anamnesis anamnesis;

    @Override
    public String toString() {
        return "Visit{" +
                "patient=" + patient.getName() +
                ", date=" + date +
                ", anamnesis=" + anamnesis +
                '}';
    }
}
