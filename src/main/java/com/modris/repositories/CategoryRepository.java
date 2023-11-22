package com.modris.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.modris.model.Category;

public interface CategoryRepository extends JpaRepository<Category,Long> {

}
