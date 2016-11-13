sudo yum update -y
sudo gradle_version=2.6
sudo wget -c http://services.gradle.org/distributions/gradle-${gradle_version}-all.zip
sudo unzip  gradle-${gradle_version}-all.zip -d /opt
sudo ln -s /opt/gradle-${gradle_version} /opt/gradle
sudo printf "export GRADLE_HOME=/opt/gradle\nexport PATH=\$PATH:\$GRADLE_HOME/bin\n" > /etc/profile.d/gradle.sh
sudo . /etc/profile.d/gradle.sh
# check installation
gradle -v
