package com.modris.services;

import org.springframework.stereotype.Service;

import com.modris.repositories.BirdRepository;

@Service
public class BirdService {

	private final BirdRepository birdRepository;
	
	public BirdService(BirdRepository birdRepository) {
		this.birdRepository = birdRepository;
	}
	
	
}
