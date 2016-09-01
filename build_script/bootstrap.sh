#!/usr/bin/env bash

PROJECT_DIR=/var/www/html/wp-parquecapibaribe
USER_HOME=/home/vagrant

echo "Environment installation is beginning. This may take a few minutes.."

##
#	Install core components
##

echo "Updating package repositories.."
apt-get update


echo "Installing required packages.."
apt-get -y install git
apt-get -y install apache2


echo "Installing required packages for NFS file sharing for vagrant.."
apt-get -y install nfs-common

echo "Installing mysql and setting root password.."
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password parquecapibaribe'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password parquecapibaribe'
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
mysql -u root --password=parquecapibaribe -e "CREATE DATABASE wp_parque_capibaribe;"
mysql -u root --password=parquecapibaribe < ${PROJECT_DIR}/wp_parque_capibaribe.sql

echo "Installing php.."
apt-get -y install php5 libapache2-mod-php5 php5-mcrypt

echo "Add index.php to the beginning of index files"
sudo cp ${PROJECT_DIR}/build_script/dir.conf /etc/apache2/mods-enabled/dir.conf
sudo cp ${PROJECT_DIR}/build_script/000-default.conf /etc/apache2/sites-available/000-default.conf

echo "Installing php extra modules'.."
apt-get -y install php5-cgi php5-cli php5-common php5-curl php5-mysql
a2enmod rewrite

echo "Restarting apache"
sudo service apache2 restart

##
#	Setup is complete.
##
echo ""
echo "The environment has been installed."
echo ""
echo "You can start the machine by running: vagrant up"
echo "You can ssh to the machine by running: vagrant ssh"
echo "You can stop the machine by running: vagrant halt"
echo "You can delete the machine by running: vagrant destroy"
echo ""
exit 0