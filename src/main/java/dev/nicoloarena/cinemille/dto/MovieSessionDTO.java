package dev.nicoloarena.cinemille.dto;

import dev.nicoloarena.cinemille.model.MovieSession;

import java.time.LocalTime;

public class MovieSessionDTO {

    private LocalTime time;

    private RoomDTO room;

    public MovieSessionDTO(MovieSession movieSession) {
        this.time = LocalTime.ofSecondOfDay(movieSession.getTime());
        this.room = new RoomDTO(movieSession.getRoom());
    }

    public LocalTime getTime() {
        return time;
    }

    public void setTime(LocalTime time) {
        this.time = time;
    }

    public RoomDTO getRoom() {
        return room;
    }

    public void setRoom(RoomDTO room) {
        this.room = room;
    }
}
