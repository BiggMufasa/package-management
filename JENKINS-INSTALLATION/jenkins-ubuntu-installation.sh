
# Jenkins Installation And Setup In AWS EC2 ubuntu Instance.
# Installation of Java
sudo apt update   # Update the repositories
sudo apt install openjdk-11-jdk
java -version
# Install Jenkins
# run script as root user
sudo -i 
# jenkins-install.sh
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y 
sudo systemctl enable jenkins 
sudo systemctl start jenkins 
