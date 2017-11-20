package fr.enelia.dashboardapi.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.io.Serializable;
import java.util.List;

@Entity
public class Client implements Serializable {

    @Id
    @GeneratedValue
    private Long id;
    private String nom;
    private String prenom;
    private boolean isProspect;
    //@OneToMany(mappedBy = "client")
    //private List<Vente> vente;

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

    public boolean isProspect() { return isProspect; }

    public void setProspect(boolean prospect) {
        isProspect = prospect;
    }
/*
    public List<Vente> getVente() {
        return vente;
    }

    public void setVente(List<Vente> vente) {
        this.vente = vente;
    }*/
}
