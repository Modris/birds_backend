package com.modris.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.modris.model.Details;
import com.modris.repositories.DetailsRepository;

@Service
public class DetailsService {

	private final DetailsRepository detailsRepository;
	
	public DetailsService(DetailsRepository detailsRepository) {
		this.detailsRepository = detailsRepository;
	}
	
	public  List<Details> findAll(){
		return detailsRepository.findAll();
	}
	
	public Optional<Details> findById(Long id){
		return detailsRepository.findById(id);
	}
	
	public List<String> findByBirdsIdReturnStringNameOnly(Long birdsId){
		
		return detailsRepository.findByBirdsIdReturnStringNameOnly(birdsId);
	}
	
}
