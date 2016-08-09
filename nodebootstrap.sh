#!/bin/sh
# sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile
# echo "vagrant ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
sudo apt-get update
go version
if [ $? -ne 0 ]; then
sudo curl -O https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz
sudo tar -xvf go1.6.linux-amd64.tar.gz
sudo mv go /usr/local
sudo tee -a /home/vagrant/.profile <<EOF
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/vagrant/work
EOF
sudo tee -a /root/.profile <<EOF
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/vagrant/work
EOF
fi
sudo /vagrant/install-go.sh
