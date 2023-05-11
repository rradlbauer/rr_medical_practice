package at.spengergasse.medical_practice.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Anamnesis {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToMany
    @JoinColumn(name = "anamnesis_id")
    private List<Symptom> symptoms = new ArrayList<>();

    private String text;

    @Override
    public String toString() {
        return "Anamnesis{" +
                "symptoms=" + symptoms +
                ", text='" + text + '\'' +
                '}';
    }

    public void add(Symptom s){
        symptoms.add(s);
    }

    public List<Symptom> getSymptoms() {
        return symptoms;
    }

   public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
