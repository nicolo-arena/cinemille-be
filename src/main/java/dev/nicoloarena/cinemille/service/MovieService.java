package dev.nicoloarena.cinemille.service;

import dev.nicoloarena.cinemille.dto.MovieDTO;
import dev.nicoloarena.cinemille.model.CommonEntity;
import dev.nicoloarena.cinemille.model.Movie;
import dev.nicoloarena.cinemille.model.MovieSchedule;
import dev.nicoloarena.cinemille.repository.MovieRepository;
import dev.nicoloarena.cinemille.repository.MovieScheduleRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class MovieService {

    private final MovieRepository movieRepository;
    private final MovieScheduleRepository movieScheduleRepository;

    public MovieService(MovieRepository movieRepository, MovieScheduleRepository movieScheduleRepository) {
        this.movieRepository = movieRepository;
        this.movieScheduleRepository = movieScheduleRepository;
    }

    public List<MovieDTO> getAllMovies() {
        List<Movie> movies = this.movieRepository.findAll();
        return movies.stream().map(MovieDTO::new).toList();
    }

    public List<MovieDTO> getMoviesInRange(LocalDate start, LocalDate end) {
        List<MovieSchedule> movieSchedules;
        if (start == null && end == null) {
            return movieRepository.findAll().stream().map(MovieDTO::new).toList();
        } else if (start == null) {
            movieSchedules = this.movieScheduleRepository.findAllByStartDateLessThanEqual(end);
        } else if (end == null) {
            movieSchedules = this.movieScheduleRepository.findAllByEndDateGreaterThanEqual(start);
        } else {
            movieSchedules = this.movieScheduleRepository.findAllByDatesInRange(start, end);
        }
        Set<Movie> moviesSet = movieSchedules.stream().map(MovieSchedule::getMovie).collect(Collectors.toSet());
        moviesSet.forEach(m -> m.setMovieSchedules(movieSchedules.stream().filter(ms -> ms.getMovie().getId().equals(m.getId())).toList()));
        return moviesSet.stream().toList().stream().sorted(Comparator.comparing(CommonEntity::getId)).toList().stream().map(MovieDTO::new).toList();
    }
}
