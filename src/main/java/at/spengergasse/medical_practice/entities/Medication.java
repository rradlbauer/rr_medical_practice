package at.spengergasse.medical_practice.entities;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Medication extends Treatment{
    @ManyToOne
    private Agent agent;

    @Override
    public String toString() {
        return "Medication{" +
                "agent=" + agent +
                ", beginOfTreatment=" + beginOfTreatment +
                ", endOfTreatment=" + endOfTreatment +
                '}';
    }

    public Agent getAgent() {
        return agent;
    }

    public void setAgent(Agent agent) {
        this.agent = agent;
    }
}
