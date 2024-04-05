package dev.nicoloarena.cinemille.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;

@Entity
public class Country extends CommonEntity {

    @Column
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
