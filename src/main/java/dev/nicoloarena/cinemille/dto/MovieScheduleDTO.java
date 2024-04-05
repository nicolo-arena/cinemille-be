package dev.nicoloarena.cinemille.dto;

import dev.nicoloarena.cinemille.model.MovieSchedule;

import java.time.LocalDateTime;
import java.time.LocalTime;

public class MovieScheduleDTO {

    private LocalDateTime startDate;

    private LocalDateTime endDate;

    private LocalTime time;

    public MovieScheduleDTO(MovieSchedule movieSchedule) {
        this.startDate = movieSchedule.getStartDate();
        this.endDate = movieSchedule.getEndDate();
        this.time = LocalTime.ofSecondOfDay(movieSchedule.getTime());
    }

    public LocalDateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDateTime startDate) {
        this.startDate = startDate;
    }

    public LocalDateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDateTime endDate) {
        this.endDate = endDate;
    }

    public LocalTime getTime() {
        return time;
    }

    public void setTime(LocalTime time) {
        this.time = time;
    }
}
