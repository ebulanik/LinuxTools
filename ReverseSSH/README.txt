# Introduce Pi to VM
cd ~/.ssh
ssh-keygen -t rsa
scp id_rsa.pub engblnk@uekk8b7dcd3b.engblnk.koding.io:.ssh/authorized_keys

# Add to schedular
chmod 700 ~/create_ssh_tunnel.sh
crontab -e
    */1 * * * * ~/create_ssh_tunnel.sh > tunnel.log 2>&1
    
ssh -l pi -p 2222 localhost
