sudo yum update -y
sudo yum install -y openvpn
sudo modprobe iptable_nat
echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward
sudo iptables -t nat -A POSTROUTING -s 10.4.0.1/2 -o eth0 -j MASQUERADE

echo $'port 1194\nproto tcp-server \ndev tun1 \nifconfig 10.4.0.1 10.4.0.2 \nstatus server-tcp.log \n verb 3 \n secret ovpn.key \n' >openvpn.conf

sudo service openvpn start
sudo chmod 777 ovpn.key
