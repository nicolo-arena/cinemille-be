package dev.nicoloarena.cinemille.dto;

import dev.nicoloarena.cinemille.model.Room;

public class RoomDTO {

    private String name;

    private Integer seats;

    private Boolean imax;

    public RoomDTO(Room room) {
        this.name = room.getName();
        this.seats = room.getSeats();
        this.imax = room.getImax();
    }

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
