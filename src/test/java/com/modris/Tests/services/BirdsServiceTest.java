package com.modris.Tests.services;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.modris.TestContainerBase;
import com.modris.model.Bird;
import com.modris.services.BirdService;

import jakarta.transaction.Transactional;

public class BirdsServiceTest extends TestContainerBase{

	@Autowired
	private BirdService birdService;
	
	
	@Test
	@DisplayName("prechecking data")
	void start() {
		List<Bird> birds = birdService.findAll();
		
		assertEquals(40, birds.size(), ()-> "40 birds is the initial data in the MySQL image.");		
	}
	
	@Test
	@Transactional
	@DisplayName("Happy flow. Check first element data")
	void firstElementTest() {
		Optional<Bird> birdOpt =birdService.findById(1L);
		Bird bird = birdOpt.get();

		assertAll(
				() -> assertEquals("Baltā Cielava", bird.getName()),
				() -> assertEquals("White Wagtail", bird.getEnglishName()),
				() -> assertEquals("Motacilla alba", bird.getLatinName()),
				() -> assertEquals("Zvirbuļveidīgie", bird.getCategory().getName()),
				() -> assertEquals("Baltā cielava ir ne tikai Latvijas Ornitoloģijas biedrības simbols, bet arī Latvijas nacionālais putns.", bird.getFunFact()),
				() -> assertEquals("lauki", bird.getLocation().getName()),
				() -> assertEquals("Kad jaunie putni sāk ceļot, to galva, vaigi un dažkārt arī kakls mēdz iekrāsoties dzeltenīgi, mulsinot putnu vērotājus.", bird.getComment())
				);
	}
	
	@Test
	@Transactional
	@DisplayName("Happy flow. Check last element data")
	void lastElementTest() {
		Optional<Bird> birdOpt =birdService.findById(40L);
		Bird bird = birdOpt.get();
		
		assertAll(
				() -> assertEquals(" Dzeltenā stērste", bird.getName()),
				() -> assertEquals("Yellowhammer", bird.getEnglishName()),
				() -> assertEquals("Emberiza citrinella", bird.getLatinName()),
				() -> assertEquals("Zvirbuļveidīgie", bird.getCategory().getName()),
				() -> assertEquals("Dzeltenā stērste ir viena no biežāk sastopamajām atklātas ainavas sugām Latvijā, ko viegli atpazīt pēc tās dziesmas atveidojumā “dzer, dzer, dzer pieeeenu”.", bird.getFunFact()),
				() -> assertEquals("lauki", bird.getLocation().getName()),
				() -> assertEquals("Vasaras periodā dzeltenās stērstes uzturas pa pāriem, bet ziemas laikā tās veido barus, kas kopīgi barojas un nakšņo.", bird.getComment())
				);
	}
	
	@Test
	@Transactional
	@DisplayName("Negative flow.Check non-existent element.")
	void negativeFlowTest() {
		Optional<Bird> birdOpt =birdService.findById(999999L);
		
		 assertEquals(false,birdOpt.isPresent(),()->"There should be no such bird with id 999999L");
			
	}
	
}
