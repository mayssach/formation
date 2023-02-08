package com.javatpoint.beans;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="UTILISATEUR")
public class Utilisateur {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name="idUtilisateur")
    private int idUtilisateur;
    @Column(name="username")
    private String username;
    @Column(name="password")
    private String password;

    public Utilisateur(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Utilisateur() {

    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + idUtilisateur +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
    public int getIdUtilisateur() {
        return idUtilisateur;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }


    public void setIdUtilisateur(int id) {
        this.idUtilisateur = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }



}
