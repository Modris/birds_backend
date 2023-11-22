package com.modris.services;

import org.springframework.stereotype.Service;

import com.modris.repositories.DetailsRepository;

@Service
public class DetailsService {

	public DetailsRepository detailsRepository;
	
	public DetailsService(DetailsRepository detailsRepository) {
		this.detailsRepository = detailsRepository;
	}
	
	
}
