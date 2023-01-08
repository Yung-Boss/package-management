# Steps for Installing tomcat9 on rhel7&8
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
# https://github.com/LandmakTechnology/package-management/tree/main/Tomcat-installation
sudo hostnamectl set-hostname tomcat
cd /opt
sudo yum install git wget vim -y
sudo yum install java-1.8.0-openjdk-devel -y
# Download tomcat software and extract it.
# dowanload and extract tomcat software
sudo wget https://downloads.apache.org/tomcat/tomcat-11/v11.0.0-M1/bin/apache-tomcat-11.0.0-M1.tar.gz
sudo tar -xvf apache-tomcat-11.0.0-M1.tar.gz
sudo rm apache-tomcat-11.0.0-M1.tar.gz
sudo mv apache-tomcat-11.0.0-M1 tomcat 
sudo chmod 777 -R /opt/tomcat 
sudo sh /opt/tomcat/bin/startup.sh
# create a soft link to start and stop tomcat from anywhere
# to manage tomcat as a service
sudo ln -s /opt/tomcat/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat/bin/shutdown.sh /usr/bin/stoptomcat
sudo starttomcat
echo "end on tomcat installation"
sudo su - ec2-user
