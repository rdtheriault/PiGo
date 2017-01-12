# PiGo
Set up a webpage to control GoPiGo

Under construction (mostly done)

Turn your PI into a WiFi controlled robot

##Start up

###Install Raspian 

(ensure to select EN or your keyboard will be a bit screwy - i.e. British)
 
During rasp-config you can:
 - Change password
 - Enable boot to desktop (recommended)

###Use the following commands on your Pi to get the install started

```
sudo git clone https://github.com/rdtheriault/PiGo.git
cd PiGo
sudo chmod +x install.sh
./install.sh
```

###Final setup

Add `www-data` to sudoer for certian scripts

```
sudo visudo
```

Add the following to the end:
```
www-data ALL=(ALL) NOPASSWD: /home/pi/temp/
```


##NOTES

 - You will need to get the IP address so you can get to the webpage (ifconfig works)
 - You can also assign an IP and use ifconfig to get the MAC address for DHCP
 - You can set up the Wi-Fi under `Menu-> Preferences -> WiFi Config`
