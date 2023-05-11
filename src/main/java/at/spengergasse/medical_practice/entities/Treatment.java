package at.spengergasse.medical_practice.entities;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Treatment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected int id;
    protected LocalDate beginOfTreatment;
    protected LocalDate endOfTreatment;
    @OneToOne
    @JoinColumn(name = "diagnosis_id")
    protected Diagnosis reason;

    @Override
    public String toString() {
        return "Treatment{" +
                "beginOfTreatment=" + beginOfTreatment +
                ", endOfTreatment=" + endOfTreatment +
                ", reason=" + reason +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getBeginOfTreatment() {
        return beginOfTreatment;
    }

    public void setBeginOfTreatment(LocalDate beginOfTreatment) {
        this.beginOfTreatment = beginOfTreatment;
    }

    public LocalDate getEndOfTreatment() {
        return endOfTreatment;
    }

    public void setEndOfTreatment(LocalDate endOfTreatment) {
        this.endOfTreatment = endOfTreatment;
    }
}
