package com.modris.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modris.model.Details;

public interface DetailsRepository extends JpaRepository<Details,Long>  {

	@Query("SELECT d FROM Details d WHERE d.bird.id = :birdId")
	List<Details> findByBirdsId(@Param("birdId") Long id);
	
	@Query("SELECT d.name FROM Details d WHERE d.bird.id = :birdId")
	List<String> findByBirdsIdReturnStringNameOnly(@Param("birdId") Long id);
}
