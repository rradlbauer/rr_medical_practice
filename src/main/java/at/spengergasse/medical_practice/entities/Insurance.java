package at.spengergasse.medical_practice.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

@Entity
@NamedQuery(name = "Insurance.All", query = "SELECT i FROM Insurance i")
public class Insurance {
    @Id
    private String id;
    private String fullName;


    @Override
    public String toString() {
        return fullName;
    }

    public String getId() {
        return id;
    }

    public void setId(String name) {
        this.id = name;
    }


    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
}
