package dev.nicoloarena.cinemille.model;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.List;

@Entity
public class MovieSchedule extends CommonEntity {

    @Column
    private LocalDate startDate;

    @Column
    private LocalDate endDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn
    private Movie movie;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "movieSchedule")
    private List<MovieSession> movieSessions;

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

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public List<MovieSession> getMovieSessions() {
        return movieSessions;
    }

    public void setMovieSessions(List<MovieSession> movieSessions) {
        this.movieSessions = movieSessions;
    }
}
