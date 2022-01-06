#!/bin/bash
#add fix to exercise5-server2 here
sudo apt-get install sshpass

sshpass -p vagrant ssh -o StrictHostKeyChecking=no vagrant@192.168.100.10
cat /home/vagrant/.ssh/id_rsa.pub.pub >> /home/vagrant/.ssh/authorized_keys
sudo sed -i '/#PasswordAuthentication yes/c\PasswordAuthentication no' /etc/ssh/sshd_config
sudo service ssh restart