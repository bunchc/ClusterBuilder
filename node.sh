export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get upgrade -y 
sudo apt-get install -y curl
curl -L 'http://sh.opencenter.rackspace.com/install.sh' | sudo bash -s agent 172.16.172.100