package dev.nicoloarena.cinemille.dto;

import dev.nicoloarena.cinemille.model.MovieSchedule;

import java.time.LocalDate;
import java.util.List;

public class MovieScheduleDTO {

    private LocalDate startDate;

    private LocalDate endDate;

    private List<MovieSessionDTO> movieSessions;

    public MovieScheduleDTO(MovieSchedule movieSchedule) {
        this.startDate = movieSchedule.getStartDate();
        this.endDate = movieSchedule.getEndDate();
        this.movieSessions = movieSchedule.getMovieSessions().stream().map(MovieSessionDTO::new).toList();
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public List<MovieSessionDTO> getMovieSessions() {
        return movieSessions;
    }

    public void setMovieSessions(List<MovieSessionDTO> movieSessions) {
        this.movieSessions = movieSessions;
    }
}
