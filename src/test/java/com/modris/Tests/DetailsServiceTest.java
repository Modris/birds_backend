package com.modris.Tests;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.modris.TestContainerBase;
import com.modris.model.Details;
import com.modris.services.DetailsService;

public class DetailsServiceTest extends TestContainerBase{

	@Autowired
	private DetailsService detailsService;
	
	@Test
	@DisplayName("precheck data")
	void start() {
		
		List<Details> details = detailsService.findAll();
		
		assertEquals(247, details.size(), ()-> "247 details is the initial data in the MySQL image.");			
	}
	
	@Test
	@DisplayName("Check first element data")
	void firstElementTest() {
		Optional<Details> detailsOpt = detailsService.findById(1L);
		Details details = detailsOpt.get();
		
		List<Details> list = detailsService.findAll();
		
		assertAll(
				() -> assertEquals("balta piere un galvas sāni", details.getName()),
				() -> assertEquals(247, list.size()),
				() -> assertEquals("balta vēderpuse", list.get(1).getName()),
				() -> assertEquals("pelēka mugurpuse", list.get(2).getName()),
				() -> assertEquals("raiba mugura", list.get(246).getName()),
				() -> assertEquals(40, list.get(246).getBird().getId())
				);
	}
}
