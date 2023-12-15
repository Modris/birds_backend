# Bird website ziniputnu.lv backend.

![Home Page](/project_images/backend.png)
* CI/CD development in action. Commit with confidence! 
* Github actions automatically checks each commit. Runs /.mvnw clean install which will run all the Tests.
* Spring Boot, Spring Data JPA, MySQL. 
* Integration tests between MySQL and Spring Data JPA with Testcontainers. No In memory data base testing but MySQL version 8.
* RestController Mock Tests.
  
# API 

| Endpoint                    | HTTP Method | Request Body | Status | Response Body | Description                                         |
| --------------------------- | ----------- | ------------ | ------ | -------------- | --------------------------------------------------- |
| /birds                      | GET         |              | 200    | List<Bird>     | Fetch all 40 birds with all categories and location data in JSON.               |
| /birds                      | GET         |              | 204    |                | No birds data in the database. Should not happen.                                |
| /birds/{id}                 | GET         | Bird         | 200    | Bird           | Fetch data about a specific bird with all categories and locations data in JSON. |
| /birds/{id}                 | GET         | Bird         | 204    |                | No bird with such ID. As of now, we have birds 1-40 available.                  |
| /details/{id}               | GET         | Details      | 200    | Details        | Fetch details data with this ID. As of now, details have ID's from 1-240.       |
| /details/{id}               | GET         | Details      | 204    |                | No details with such ID.                                                          |
| /details/birds/{birdsId}    | GET         | String       | 200    |                | Fetch details for a specific bird. Each bird usually has 6 details.             |
| /details/birds/{birdsId}    | GET         | String       | 204    |                | No details for such bird. As of now, available bird IDs are 1-40.                |

# MySQL Schema

![Schema](/project_images/schema.png)

# Set up Locally

1) Change jdbc url, username and password in application.properties (in src->main->resources folder)

2) Create a new MySQL database and execute init_short.sql script for data (docker_image_guide/testcontainers_docker_image folder)

3) Launch Spring Boot application and check endpoints localhost:8080/birds, localhost:8080/birds/1 on Postman (or other program).

# Set up Dockerfile or Docker-Compose 

* More information in /docker-image-guide folder.

