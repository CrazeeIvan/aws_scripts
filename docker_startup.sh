sudo yum update -y
echo $'[dockerrepo]\nname=Docker Repository\nbaseurl=https://yum.dockerproject.org/repo/main/centos/7/\nenabled=1\ngpgcheck=1\ngpgkey=https://yum.dockerproject.org/gpg' > docker.repo
sudo mv docker.repo /etc/profile.d/docker.repo
sudo yum install -y docker docker-engine
sudo systemctl enable docker.service
sudo systemctl start docker
sudo docker run --rm hello-world
sudo groupadd docker
sudo usermod -aG docker ec2-user`
sudo systemctl enable docker
