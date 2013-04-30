export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get install -y curl
curl -L 'http://sh.opencenter.rackspace.com/install.sh' | sudo bash -s - --role=agent --ip=`cat /vagrant/opencenter_ip`
