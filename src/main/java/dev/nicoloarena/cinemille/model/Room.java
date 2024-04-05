package dev.nicoloarena.cinemille.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;

@Entity
public class Room extends CommonEntity {

    @Column
    private String name;

    @Column
    private Integer seats;

    @Column
    private Boolean imax;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSeats() {
        return seats;
    }

    public void setSeats(Integer seats) {
        this.seats = seats;
    }

    public Boolean getImax() {
        return imax;
    }

    public void setImax(Boolean imax) {
        this.imax = imax;
    }
}
