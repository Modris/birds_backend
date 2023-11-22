package com.modris.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.modris.model.Bird;

public interface BirdRepository extends JpaRepository<Bird,Long>  {

}
