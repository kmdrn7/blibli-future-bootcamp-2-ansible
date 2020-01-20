useradd ansible --groups wheel
echo "%ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible
mkdir /home/ansible/.ssh
chown -R ansible: /home/ansible/.ssh