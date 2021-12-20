# Execute robot playwright tests on docker 
project to run selenium cucumber scripts on aws using EC2
need to run the following commands on the ec2 machine to install Docker and Docker-Compose

----------- Docker Installation -----------------------  
sudo amazon-linux-extras install docker  
sudo service docker start  
sudo usermod -a -G docker ec2-user  
---> Docker Auto start  
sudo chkconfig docker on  
---> Git installation  
sudo yum install -y git  
---> Reboot machine  
sudo reboot  
  
----------- Docker Compose Installation -----------------------  
---> Installing latest version of docker-compose  
pip install docker-compose 
  
docker-compose version  

----------- Executing the tests and obtaining the results -----------------------  
---> Running the .robot test case in docker, note the image already has the tests and dependencies  
docker exec -it playwright-robot-container robot -d results playwright_test.robot
  
---> copying results to local file for further execution  
docker cp playwright-robot-container:results . 