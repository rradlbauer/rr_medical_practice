package at.spengergasse.medical_practice.entities;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Symptom {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "symptom_id")
    private SymptomCode code;
    private LocalDate onset;

    @Override
    public String toString() {
        return "Symptom{" +
                "code=" + code +
                ", onset=" + onset +
                '}';
    }

    public SymptomCode getCode() {
        return code;
    }

    public void setCode(SymptomCode code) {
        this.code = code;
    }

    public LocalDate getOnset() {
        return onset;
    }

    public void setOnset(LocalDate onset) {
        this.onset = onset;
    }
}
