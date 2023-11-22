package com.modris.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.modris.model.Location;

public interface LocationRepository extends JpaRepository<Location,Long> {

}
