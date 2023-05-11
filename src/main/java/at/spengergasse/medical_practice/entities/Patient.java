package at.spengergasse.medical_practice.entities;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@NamedQueries({
        @NamedQuery(name = "Patients.All", query = "SELECT p FROM Patient p")
})
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private long svnr;
    @ManyToOne
    @JoinColumn(name = "insurance_name")
    private Insurance insurance;
    private String name;
    private LocalDate birth;
    private char gender;
    @OneToMany
    @JoinColumn(name = "patient_id")
    private List<Adress> adresses = new ArrayList<>();
    private String phone;
    //////////////////////////////////////////////////////////
    @OneToMany(mappedBy = "patient")
    private List<Schedule> schedules = new ArrayList<>();
    @OneToMany(mappedBy = "patient")
    private List<Visit> visits = new ArrayList<>();
    @OneToMany
    @JoinColumn(name = "patient_id")
    private List<Diagnosis> diagnosisList = new ArrayList<>();
    @OneToMany
    @JoinColumn(name = "patient_id")
    private List<Treatment> treatments = new ArrayList<>();

    @Override
    public String toString() {
        return name;
    }

    public void add(Visit v){
        visits.add(v);
    }

    public void add(Schedule s){
        schedules.add(s);
    }

    public void add(Adress a){
        adresses.add(a);
    }

    public void add(Treatment t){
        treatments.add(t);
    }

    public List<Adress> getAdresses() {
        return adresses;
    }

    public List<Visit> getVisits() {
        return visits;
    }

    public List<Diagnosis> getDiagnosisList() {
        return diagnosisList;
    }

    public List<Treatment> getTreatments() {
        return treatments;
    }

    public long getSvnr() {
        return svnr;
    }

    public void setSvnr(long svnr) {
        this.svnr = svnr;
    }

    public Insurance getInsurance() {
        return insurance;
    }

    public void setInsurance(Insurance insurance) {
        this.insurance = insurance;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getBirth() {
        return birth;
    }

    public void setBirth(LocalDate birth) {
        this.birth = birth;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public List<Schedule> getSchedules() {
        return schedules;
    }
}
