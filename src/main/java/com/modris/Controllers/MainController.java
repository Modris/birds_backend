package com.modris.Controllers;

import java.util.List;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.modris.model.Bird;
import com.modris.model.Details;
import com.modris.services.BirdService;
import com.modris.services.DetailsService;

@RestController
public class MainController {

	private final BirdService birdService;
	private final DetailsService detailsService;

	public MainController(BirdService birdService, DetailsService detailsService) {
		this.birdService = birdService;
		this.detailsService = detailsService;
	}
	@CrossOrigin
	@GetMapping("/birds")
	public ResponseEntity<List<Bird>> getBirds() {
		List<Bird> birds = birdService.findAll();

		if (birds.size() > 0) {
			HttpHeaders headers = new HttpHeaders();
	        headers.setCacheControl(CacheControl.maxAge(3600, TimeUnit.SECONDS)); // Cache for 1 hour
			return new ResponseEntity<List<Bird>>(birds,headers, HttpStatus.OK);
		} else {
			return new ResponseEntity<List<Bird>>(HttpStatus.NO_CONTENT); // 204. Request successful but no content
		}

	}

	@CrossOrigin
	@GetMapping("/birds/{id}")
	public ResponseEntity<Bird> getBirdsWithId(@PathVariable Long id) {

		Optional<Bird> birdOpt = birdService.findById(id);

		if (birdOpt.isPresent()) {
			HttpHeaders headers = new HttpHeaders();
	        headers.setCacheControl(CacheControl.maxAge(3600, TimeUnit.SECONDS)); // Cache for 1 hour
			return new ResponseEntity<Bird>(birdOpt.get(), headers, HttpStatus.OK);
		} else {
			return new ResponseEntity<Bird>(HttpStatus.NO_CONTENT);
		}
	}
	/* Unneccessary for now. It returns too much data.
	@GetMapping("/details")
	public ResponseEntity<List<Details>> getAllDetails() {
		List<Details> list = detailsService.findAll();
		if (list.size() > 0) {
			return new ResponseEntity<List<Details>>(list, HttpStatus.OK);
		} else {
			return new ResponseEntity<List<Details>>(HttpStatus.NO_CONTENT);
		}
	}
	*/
	@CrossOrigin
	@GetMapping("/details/{id}")
	public ResponseEntity<Details> findDetailsWithId(@PathVariable Long id){
		Optional<Details> detailsOpt = detailsService.findById(id);
		if(detailsOpt.isPresent()) {
			HttpHeaders headers = new HttpHeaders();
			headers.setCacheControl(CacheControl.maxAge(3600, TimeUnit.SECONDS)); // Cache for 1 hour
			return new ResponseEntity<Details>(detailsOpt.get(),HttpStatus.OK);
		} else {
			return new ResponseEntity<Details>(HttpStatus.NO_CONTENT);
		}
		
	}
	@CrossOrigin
	@GetMapping("/details/birds/{birdsId}")
	public ResponseEntity<List<String>> findDetailsByBirdsIdReturnStringNameOnly(@PathVariable Long birdsId){
		
		List<String> list = detailsService.findByBirdsIdReturnStringNameOnly(birdsId);
		if(list.size() > 0) {
			  HttpHeaders headers = new HttpHeaders();
			  headers.setCacheControl(CacheControl.maxAge(3600, TimeUnit.SECONDS)); // Cache for 1 hour
			return new ResponseEntity<List<String>>(list,HttpStatus.OK);
		} else {
			return new ResponseEntity<List<String>>(HttpStatus.NO_CONTENT);
		}
	}
	
	
}
