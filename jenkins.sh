# Installing git java version 1.8 maven.
sudo yum install git java-1.8.0 maven -y

# Getting the repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Download java 11 and jenkins
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
update-alternatives --config java

# Restarting Server when we download service it will in stopped state.
systemctl start jenkins.service
systemctl status jenkins.service
