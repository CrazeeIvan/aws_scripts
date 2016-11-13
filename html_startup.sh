sudo yum update -y
sudo yum install -y httpd24 php56 mysql55-server php56-mysqlnd
sudo service httpd start
sudo chkconfig httpd on
chkconfig --list httpd
echo "######################"
echo "# Webserver started! #"
echo "######################"
sudo yum install -y openvpn
sudo modprobe iptable_nat
echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward
sudo iptables -t nat -A POSTROUTING -s 10.4.0.1/2 -o eth0 -j MASQUERADE

echo $'port 1194\nproto tcp-server \ndev tun1 \nifconfig 10.4.0.1 10.4.0.2 \nstatus server-tcp.log \n verb 3 \n secret ovpn.key \n' >openvpn.conf

sudo service openvpn start
sudo chmod 777 ovpn.key

sudo groupadd www
sudo usermod -a -G www ec2-user
sudo chown -R root:www /var/www
sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
