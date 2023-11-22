package com.modris.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "category")
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String name;
	
	@Column(name = "english_name")
	private String englishName;
	
	@Column(name = "latin_name")
	private String latinName;
	
	public Category() {}
	
	public Category(String name) {
		this.name = name;
	}
	public Category(String name, String englishName) {
		this.name = name;
		this.englishName = englishName;
	}
	public Category(String name, String englishName, String latinName) {
		this.name = name;
		this.englishName = englishName;
		this.latinName = latinName;
	}

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEnglishName() {
		return englishName;
	}

	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}

	public String getLatinName() {
		return latinName;
	}

	public void setLatinName(String latinName) {
		this.latinName = latinName;
	}
	
	
}
