package at.spengergasse.medical_practice.entities;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Diagnosis {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "diagnosis_code")
    private DiagnosisCode code;
    private LocalDate diagnosisDate;
    private String comment;

    @Override
    public String toString() {
        return "Diagnosis{" +
                "code=" + code +
                ", diagnosisDate=" + diagnosisDate +
                ", comment='" + comment + '\'' +
                '}';
    }

    public DiagnosisCode getCode() {
        return code;
    }

    public void setCode(DiagnosisCode code) {
        this.code = code;
    }

    public LocalDate getDiagnosisDate() {
        return diagnosisDate;
    }

    public void setDiagnosisDate(LocalDate diagnosisDate) {
        this.diagnosisDate = diagnosisDate;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
