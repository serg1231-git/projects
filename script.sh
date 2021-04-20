random_direct=($(ls -a / | shuf -n 1))
cd /$random_direct
#!/bin/bash
echo "Input customer"
read use
direct=($(getent passwd $use))
if [[ $direct ]]; then
echo "User $use in system"
else
sudo useradd $use
echo "User $use will successfully created"
fi
sudo adduser $use sudo
sudo cp /etc/sudoers /etc/sudoers.new
sudo chmod ugo+rwx /etc/sudoers.new
echo "$use ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.new
sudo cp /etc/sudoers.new /etc/sudoers
ssh-keygen -t rsa

