package at.spengergasse.medical_practice.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class DiagnosisCode {
    @Id
    private String icd10;
    private String description;

    @Override
    public String toString() {
        return "DiagnosisCode{" +
                "icd10='" + icd10 + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    public String getIcd10() {
        return icd10;
    }

    public void setIcd10(String icd10) {
        this.icd10 = icd10;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
