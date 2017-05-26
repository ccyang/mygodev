#!/usr/bin/env bash

ansible --version

sed -i 's/#host_key_checking/host_key_checking/g' /etc/ansible/ansible.cfg
sed -i 's/#log_path/log_path/g' /etc/ansible/ansible.cfg

cd /home/vagrant

sudo cp /vagrant/local/inventory /etc/ansible/hosts
cat /etc/ansible/hosts

echo "ansible-playbook /vagrant/ansible/playbook.yml"

#sudo ansible-playbook /vagrant/ansible/playbook.yml

#ansible -m setup hostname
#ansible -m debug -a "var=hostvars['hostname']" localhost
#hostvars[host]['ansible_eth0']['ipv4']['address']

#check docker is started?
#systemctl status docker.service
#systemctl show docker | grep EnvironmentFile
#systemctl status docker | grep Loaded
#grep EnvironmentFile /usr/lib/systemd/system/docker.service

# CPU查看命令: more /proc/cpuinfo |grep "model name"
# Mem查看命令: grep MemTotal /proc/meminfo

# sudo iptables -t nat -L