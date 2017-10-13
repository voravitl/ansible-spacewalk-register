crontabfile=/etc/crontab
ansible-playbook -e hosts=$1 /root/ansible/ansible-script/add-hosts.yml
#ansible-playbook -e "hosts=$1 spacewalk_server=lsm.lax10.vpls.net" /root/ansible/ansible-script/spacewalk-client.yml 
ansible-playbook -e "hosts=$1 spacewalk_server=lsm.lax10.vpls.net" /Users/tlaheep/Ansible/ansible-script/spacewalk-client.yml 
ansible-playbook -e "hosts=$1 path=$crontabfile" /root/ansible/ansible-script/add_crontab.yml
