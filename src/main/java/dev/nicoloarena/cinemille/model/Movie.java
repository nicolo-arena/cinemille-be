package dev.nicoloarena.cinemille.model;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Entity
public class Movie extends CommonEntity {

    @Column
    private String title;

    @Column
    private Integer duration; // minutes

    @Column
    private Integer year;

    @Column
    private LocalDate released;

    @ManyToOne(fetch = FetchType.LAZY)
    private Country country;

    @ManyToMany(fetch = FetchType.LAZY)
    private List<Studio> studios;

    @ManyToMany(fetch = FetchType.LAZY)
    private List<Genre> genres;

    @OneToMany(fetch = FetchType.LAZY)
    private List<MovieSchedule> movieSchedules;

    @ManyToMany(fetch = FetchType.LAZY)
    private List<Actor> actors;

    @ManyToMany(fetch = FetchType.LAZY)
    private List<Director> directors;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public LocalDate getReleased() {
        return released;
    }

    public void setReleased(LocalDate released) {
        this.released = released;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public List<Studio> getStudios() {
        return studios;
    }

    public void setStudios(List<Studio> studios) {
        this.studios = studios;
    }

    public List<Genre> getGenres() {
        return genres;
    }

    public void setGenres(List<Genre> genres) {
        this.genres = genres;
    }

    public List<MovieSchedule> getMovieSchedules() {
        return movieSchedules;
    }

    public void setMovieSchedules(List<MovieSchedule> movieSchedules) {
        this.movieSchedules = movieSchedules;
    }

    public List<Actor> getActors() {
        return actors;
    }

    public void setActors(List<Actor> actors) {
        this.actors = actors;
    }

    public List<Director> getDirectors() {
        return directors;
    }

    public void setDirectors(List<Director> directors) {
        this.directors = directors;
    }
}
