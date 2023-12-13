I created Docker Image for Birds backend project with buildpacks and not Dockerfile.

1) Open Docker Desktop (So Testcontainer tests pass when building JAR).
2) In /Birds folder open CMD and execute the command: "./mvnw spring-boot:build-image"
	1st time it will be 1min59sec. Afterwards buildpacks will be cached and it will create image in 43 seconds.