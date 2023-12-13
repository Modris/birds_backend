package com.modris;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.testcontainers.containers.MySQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.utility.DockerImageName;

/*
 * 
For TestContainers test we use custom made mysql 8.0.34 image with data already inside.
Check /docker_images/README file for more information.
*/
@SpringBootTest
public class TestContainerBase {
	
	
	@Container
	@ServiceConnection
	public static MySQLContainer<?> mysql = new MySQLContainer<>(
		    DockerImageName.parse("modrisl/custom-mysql2:version1.1")
		        .asCompatibleSubstituteFor("mysql"))
				.withDatabaseName("putni")
				.withUsername("root")
				.withPassword("ape123");
		    
	static {
		mysql.start();
	}

	 
	@Test
	@DisplayName("Successfully launched TestContainersBase.")
	void beforeAll() {

	}
}
