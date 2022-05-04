# Cisco-ansible-backup
ansible playbook etc for cisco devices backups

### Usage
to use this repo, first clone then perform the following:
* edit hosts file and add all cisco devices and their respective IPs.
* edit group_vars/all.yml and add users/pass info respectively
* then ``` ansible-vault encrypt group_vars/all.yml ``` enter in your encryption pass
* then you can execute the playbook: ```ansible-playbook backup.yml --ask-vault-pass``` it will ask for your vault pass..then execute

### config usage
* edit the ntp.yml to push whatever commands to the same infrastructure. (you can just add the ntp servers as set in script too)
* execute ``` ansible-playbook ntp.yml --ask-vault-pass ``` and the script will add the publicly available NTP server
