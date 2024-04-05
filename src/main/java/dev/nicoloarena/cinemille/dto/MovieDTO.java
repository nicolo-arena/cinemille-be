package dev.nicoloarena.cinemille.dto;

import dev.nicoloarena.cinemille.model.*;

import java.time.LocalDateTime;
import java.util.List;

public class MovieDTO {

    private String title;

    private Integer duration; // minutes

    private Integer year;

    private LocalDateTime released;

    private String country;

    private List<String> studios;

    private List<String> genres;

    private List<MovieScheduleDTO> movieSchedules;

    private List<PersonDTO> actors;

    private List<PersonDTO> directors;


    public MovieDTO() {}

    public MovieDTO(Movie movie) {
        this.title = movie.getTitle();
        this.duration = movie.getDuration();
        this.year = movie.getYear();
        this.released = movie.getReleased();
        this.country = movie.getCountry().getName();
        this.studios = movie.getStudios().stream().map(Studio::getName).toList();
        this.genres = movie.getGenres().stream().map(Genre::getName).toList();
        this.movieSchedules = movie.getMovieSchedules().stream().map(MovieScheduleDTO::new).toList();
        this.actors = movie.getActors().stream().map(PersonDTO::new).toList();
        this.directors = movie.getDirectors().stream().map(PersonDTO::new).toList();
    }

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

    public LocalDateTime getReleased() {
        return released;
    }

    public void setReleased(LocalDateTime released) {
        this.released = released;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public List<String> getStudios() {
        return studios;
    }

    public void setStudios(List<String> studios) {
        this.studios = studios;
    }

    public List<String> getGenres() {
        return genres;
    }

    public void setGenres(List<String> genres) {
        this.genres = genres;
    }

    public List<MovieScheduleDTO> getMovieSchedules() {
        return movieSchedules;
    }

    public void setMovieSchedules(List<MovieScheduleDTO> movieSchedules) {
        this.movieSchedules = movieSchedules;
    }

    public List<PersonDTO> getActors() {
        return actors;
    }

    public void setActors(List<PersonDTO> actors) {
        this.actors = actors;
    }

    public List<PersonDTO> getDirectors() {
        return directors;
    }

    public void setDirectors(List<PersonDTO> directors) {
        this.directors = directors;
    }
}
