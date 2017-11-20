package fr.enelia.dashboardapi.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
/*@JsonIdentityInfo(
        generator = ObjectIdGenerators.PropertyGenerator.class,
        property = "id",
        scope = Employe.class)*/
public class Employe implements Serializable {

    @Id
    @GeneratedValue
    private Long id;
    private String nom;
    private String prenom;
    private String photo;
    @ManyToOne
    //@JsonManagedReference
    private Agence agence;
    @OneToMany(mappedBy = "employe", cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    //@JsonManagedReference
    private List<Objectif> objectifs;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Agence getAgence() {
        return agence;
    }

    public void setAgence(Agence agence) {
        this.agence = agence;
    }

    public List<Objectif> getObjectifs() {
        return objectifs;
    }

    public void setObjectifs(List<Objectif> objectifs) {
        this.objectifs = objectifs;
    }
}
