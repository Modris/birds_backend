package com.modris.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.modris.model.Bird;
import com.modris.repositories.BirdRepository;

@Service
public class BirdService {

	private final BirdRepository birdRepository;
	
	public BirdService(BirdRepository birdRepository) {
		this.birdRepository = birdRepository;
	}
	
	public List<Bird> findAll() {
		return birdRepository.findAll();
	}
	
	public Optional<Bird> findById(Long id){
		return birdRepository.findById(id);
	}
	
}
