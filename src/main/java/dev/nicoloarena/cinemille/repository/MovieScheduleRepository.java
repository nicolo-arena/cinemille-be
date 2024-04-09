package dev.nicoloarena.cinemille.repository;

import dev.nicoloarena.cinemille.model.MovieSchedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface MovieScheduleRepository extends JpaRepository<MovieSchedule, Long> {

    @Query("SELECT ms " +
            "FROM MovieSchedule ms " +
            "WHERE (" +
            "(ms.startDate between :start and :end) or (ms.endDate between :start and :end) or " +
            "(ms.startDate <= :start and ms.endDate >= :end)" +
            ")")
    List<MovieSchedule> findAllByDatesInRange(LocalDate start, LocalDate end);

    List<MovieSchedule> findAllByStartDateLessThanEqual(LocalDate date);

    List<MovieSchedule> findAllByEndDateGreaterThanEqual(LocalDate date);

}
