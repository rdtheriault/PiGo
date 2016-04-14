#!/bin/bash

echo "***Starting update (this might take a while)***"
sudo apt-get update -qq
sudo apt-get upgrade -qq
sudo apt-get dist-upgrade -qq
sudo apt-get update -qq
sudo apt-get upgrade -qq
echo "***Completed Update***"

echo "***Starting Installs***"
echo "sqlite3"
sudo apt-get install sqlite3 -qq
echo "apache2"
sudo apt-get install apache2 -qq
echo "php5"
sudo apt-get install php5 php5-sqlite -qq
echo "VNC programs"
sudo apt-get install xRDP -qq 
sudo apt-get install x11vnc -qq
sudo apt-get install tightvncserver -qq
echo "Screensaver"
sudo apt-get install xscreensaver -qq
echo "***Completed installing programs***"

#echo "***Get Templates***"
#sudo wget http://sagefirellc.com/PiDMP/template.odp
#sudo wget http://sagefirellc.com/PiDMP/template.pptx
#echo "***Templated retreived***"

echo "***Create directories and move files***"
mkdir /home/pi/temp
mkdir /home/pi/temp/pres
sudo mkdir /var/www/templates

sudo rm /var/www/index.html
sudo mv index.php /var/www
sudo mv run2.php /var/www
#sudo mv create.sql /home/pi
sudo mv fwd.py /home/pi/temp
sudo mv stop.py /home/pi/temp
sudo mv back.py /home/pi/temp
sudo mv left.py /home/pi/temp
sudo mv right.py /home/pi/temp
sudo mv -f .xscreensaver /home/pi
sudo mv -f php.ini /etc/php5/apache2
#sudo mv template.odp /var/www/templates
sudo mv info.txt /var/www/templates/info.txt
echo ""


echo "***Completed creates and moves***"

#echo "->Creating database, please enter '.read /home/pi/create.sql'"
#echo "then use '.exit' to continue installation"
#cd /home/pi/temp
#sqlite3 main.db

echo "***Changing Permissions***"
sudo chown -R www-data /home/pi/temp
sudo chmod 777 /home/pi/temp/main.db
sudo chmod +x /home/pi/temp/left.py
sudo chmod +x /home/pi/temp/right.py
sudo chmod +x /home/pi/temp/stop.py
sudo chmod +x /home/pi/temp/fwd.py
sudo chmod +x /home/pi/temp/back.py
echo "***Change Complete***"
