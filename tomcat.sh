apt update -y
apt install tomcat9 tomcat9-admin
sudo sed -i 's/8080/9999/g' /var/lib/tomcat9/conf/server.xml
sudo cat /var/lib/tomcat9/conf/server.xml | grep 9999

systemctl restart tomcat9
 sudo usermod -aG tomcat jenkins
