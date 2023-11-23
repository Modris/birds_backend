package com.modris.Tests.services;

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
	@DisplayName("Check details element data")
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
	
	@Test
	@DisplayName("findByBirdsIdReturnStringNameOnly method test. Happy flow first element.")
	void findByBirdsIdFirstTest() {
		
		List<String> list = detailsService.findByBirdsIdReturnStringNameOnly(1L);
		
		assertAll(
				() -> assertEquals(5,list.size()),
				
				() -> assertEquals("balta piere un galvas sāni", list.get(0)),
				() -> assertEquals("balta vēderpuse", list.get(1)),
				() -> assertEquals("pelēka mugurpuse", list.get(2)),
				() -> assertEquals("melna aste ar baltām malām", list.get(3)),
				() -> assertEquals("melna galvas virsa, pakausis, rīkle un zods", list.get(4))
				);
	}
	@Test
	@DisplayName("findByBirdsIdReturnStringNameOnly method test. Happy flow LAST element.")
	void findByBirdsIdFirstLastElementTest() {
		
		List<String> list = detailsService.findByBirdsIdReturnStringNameOnly(40L);
		
		assertAll(
				() -> assertEquals(7,list.size()),
				
				() -> assertEquals("dzeltenīgs putns", list.get(0)),
				() -> assertEquals("tēviņš – koši dzeltens", list.get(1)),
				() -> assertEquals("mātīte – dzeltenpelēka", list.get(2)),
				() -> assertEquals("pagara, šķelta aste, ruda virsaste", list.get(3)),
				() -> assertEquals("pelēks, konusveidīgs knābis", list.get(4)),
				() -> assertEquals("sārtas kājas", list.get(5)),
				() -> assertEquals("raiba mugura", list.get(6))
				);
	}
	
	@Test
	@DisplayName("findByBirdsIdReturnStringNameOnly method test. No Content flow.")
	void findByBirdsIdFirstNoContentTest() {
		
		List<String> list = detailsService.findByBirdsIdReturnStringNameOnly(99995L);
		 assertEquals(0,list.size(),() -> "99995L no such birds ID. List size should be 0.");
	
	}
}
