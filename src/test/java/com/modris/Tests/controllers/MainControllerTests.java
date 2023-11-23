package com.modris.Tests.controllers;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import com.modris.model.Bird;
import com.modris.model.Details;
import com.modris.services.BirdService;
import com.modris.services.DetailsService;

@WebMvcTest
@DisplayName("MainController REST mappings tests")
public class MainControllerTests {
	
	@Autowired
    private MockMvc mockMvc;
	
	@MockBean
	private  BirdService birdService;
	@MockBean
	private  DetailsService detailsService;
	
	@Test
	@DisplayName("/details/birds/{birdsId} test. Happy flow. HttpStatus.OK")
	void detailsBirdsIdTestHappy()  throws Exception{
		
		List<String> list = new ArrayList<>();
		list.add("test");
		when(detailsService.findByBirdsIdReturnStringNameOnly(1L)).thenReturn(list);
		mockMvc.perform(get("/details/birds/{birdsId}","1"))
						.andExpect(status().isOk());
		
	}
	
	@Test
	@DisplayName("/details/birds/{birdsId} test. Negative flow. HttpStatus.NO_CONTENT")
	void detailsBirdsIdTestNegative()  throws Exception{
		
		mockMvc.perform(get("/details/birds/{birdsId}","1"))
						.andExpect(status().isNoContent());
		
	}
	
	@Test
	@DisplayName("/details/{id} test. Happy flow. HttpStatus.OK")
	void detailsIdTestHappy()  throws Exception{
		
		Optional<Details> detailsOpt = Optional.of(new Details());
		when(detailsService.findById(1L)).thenReturn(detailsOpt);
		mockMvc.perform(get("/details/{id}","1"))
						.andExpect(status().isOk());
		
	}
	
	@Test
	@DisplayName("/details/{id} test. Negative flow. HttpStatus.NO_CONTENT")
	void detailsIdTestNegative()  throws Exception{
		
		mockMvc.perform(get("/details/{id}","1"))
						.andExpect(status().isNoContent());
		
	}
	
	@Test
	@DisplayName("/birds/{id} test. Happy flow. HttpStatus.OK")
	void birdsIdTestHappy()  throws Exception{
		
		Optional<Bird> birdsOpt = Optional.of(new Bird());
		when(birdService.findById(1L)).thenReturn(birdsOpt);
		mockMvc.perform(get("/birds/{id}","1"))
						.andExpect(status().isOk());
		
	}
	
	@Test
	@DisplayName("/birds/{id} test. Negative flow. HttpStatus.NO_CONTENT")
	void birdsIdTestNegative()  throws Exception{
		
		mockMvc.perform(get("/birds/{id}","1"))
						.andExpect(status().isNoContent());
		
	}
	
	@Test
	@DisplayName("/birds test. Happy flow. HttpStatus.OK")
	void birdsTestHappy()  throws Exception{
		
		List<Bird> list = new ArrayList<>();
		list.add(new Bird());
		
		when(birdService.findAll()).thenReturn(list);
		mockMvc.perform(get("/birds"))
						.andExpect(status().isOk());
		
	}
	
	@Test
	@DisplayName("/birds test. Negative flow. HttpStatus.NO_CONTENT")
	void birdsTestNegative()  throws Exception{
		
		mockMvc.perform(get("/birds"))
						.andExpect(status().isNoContent());
		
	}
}
