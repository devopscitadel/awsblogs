# /usr/bin -e

# Update the version to 8 for Jenkins
sudo apt-get install -y software-properties-common
sudo apt-get update
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
apt-get install -y openjdk-8-jdk

# Install Jenkins
sudo wget -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sed -i '$ a deb https://pkg.jenkins.io/debian-stable binary/' /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y jenkins