# Check if java has been installed
java -version

# Install Docker
# Remove old version of Docker (if any)
sudo apt-get remove docker docker-engine docker.io containerd runc

# Install Docker CE using the repository
sudo apt-get update
# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common
# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
# Set up the stable repository
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install Docker CE
sudo apt-get update
sudo apt-get install docker-ce
# Verify that Docker CE is installed correctly by running the hello-world image.
sudo docker run hello-world

# Check Docker status
sudo service docker status
sudo vim /lib/systemd/system/docker.service
sudo systemctl edit docker
# Modify the line ExecStart
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -D -H tcp://127.0.0.1:2375
# Reload and restart Docker
sudo systemctl daemon-reload
sudo systemctl restart docker

# Pull the demo image
sudo docker pull openanalytics/shinyproxy-demo
# Check if the image is pulled
sudo docker images | grep shinyproxy

# Download ShinyProxy jar file
# Run Shiny proxy
java -jar shinyproxy-2.1.0.jar  
# OR
# Download ShinyProxy from github

# Change into the repo
# Build the image
# Change the application.yml file

# Login
username: tesla
password: password


 

