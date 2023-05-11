package at.spengergasse.medical_practice.entities;

import javax.persistence.Entity;

@Entity
public class PhysicalTherapy extends Treatment{
    private String description;

    @Override
    public String toString() {
        return "PhysicalTherapy{" +
                "description='" + description + '\'' +
                ", beginOfTreatment=" + beginOfTreatment +
                ", endOfTreatment=" + endOfTreatment +
                '}';
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
