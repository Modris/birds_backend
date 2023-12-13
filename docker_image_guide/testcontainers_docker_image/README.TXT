TestContainerBase class will create a docker container upon which to run tests.
It uses a custom image from this Dockerfile.

Just use my modrisl/custom-mysql2 public image on docker hub.
Or learn how to create one yourself here. Just remember to rename it with 
your username when pushing to docker hub.

	In this directory open cmd and execute commands:
	0) Check that the folder contains init_short.sql and my_cnf files.
	1) Run Docker Desktop
	2) docker build -t custom-mysql2 . (don't forget the dot. It means this folder has dockerfile)
	3) docker tag custom-mysql2 custom-mysql2:version1.0


~~~~~~~~~~~~~~OPTIONAL~~~~~~~~~~~~~~
Check that the data is loaded into the MySQL image from init_short.sql file. 

Open cmd and run command:
  docker run --name mysqlv3 -e MYSQL_ROOT_PASSWORD=password -d -p 127.0.0.1:3308:3306 -u root custom-mysql2:version1.0		
  
  Then Open MySQL WorkBench and make a new connection to 127.0.0.1/3308 with user "root" and password = "password".
  
  use putni;
  SELECT * FROM birds;