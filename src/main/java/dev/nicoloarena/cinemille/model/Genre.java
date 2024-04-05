package dev.nicoloarena.cinemille.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.ManyToMany;

import java.util.List;

@Entity
public class Genre extends CommonEntity{

    @Column
    private String name;

    @ManyToMany(fetch = FetchType.LAZY)
    private List<Movie> movies;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Movie> getMovies() {
        return movies;
    }

    public void setMovies(List<Movie> movies) {
        this.movies = movies;
    }
}
