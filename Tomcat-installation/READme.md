#  **<span style="color:green">Landmark Technologies, Ontario, Canada.</span>**
### **<span style="color:green">Contacts: +1437 215 2483<br> WebSite : <http://mylandmarktech.com/></span>**
### **Email: mylandmarktech@gmail.com**



## Apache Tomcat Installation And Setup In AWS EC2 Redhat Instance.
##### Prerequisite
+ AWS Acccount.
+ Create Redhat EC2 T2.micro Instance.
+ Create Security Group and open Tomcat ports or Required ports.
   + 8080 ..etc
+ Attach Security Group to EC2 Instance.
+ Install java openJDK 1.8+

### Install Java JDK 1.8+ 

``` sh
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
sudo hostnamectl set-hostname tomcat
sudo su - ec2-user
cd /opt 
sudo yum install wget nano tree unzip git-all -y
sudo yum install java-1.8.0-openjdk-devel -y
```
## Install Tomcat version 9.0.69
### Download and extract the tomcat server
``` sh
sudo wget https://downloads.apache.org/tomcat/tomcat-11/v11.0.0-M1/bin/apache-tomcat-11.0.0-M1.tar.gz
sudo tar -xvf apache-tomcat-11.0.0-M1.tar.gz
sudo rm -rf apache-tomcat-11.0.0-M1.tar.gz
### rename tomcat for good naming convention
sudo mv apache-tomcat-11.0.0-M1 tomcat
### assign executable permissions to the tomcat home directory
sudo chmod 777 -R /opt/tomcat
sudo chown ec2-user -R /opt/tomcat
### start tomcat
sh /opt/tomcat/bin/startup.sh
# create a soft link to start and stop tomcat
# This will enable us to manage tomcat as a service
sudo ln -s /opt/tomcat/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat
sudo su - ec2-user
```

