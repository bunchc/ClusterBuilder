export DEBIAN_FRONTEND=noninteractive
MY_IP=$(ifconfig eth1 | awk '/inet addr/ {split ($2,A,":"); print A[2]}')
sudo apt-get update
sudo apt-get install -y curl

curl -L 'http://sh.opencenter.rackspace.com/install.sh' | sudo bash -s - --role=server
curl -L 'http://sh.opencenter.rackspace.com/install.sh' | sudo bash -s - --role=dashboard --ip=${MY_IP}

sudo cat > /vagrant/opencenter_ip <<EOF
${MY_IP}
EOF
