ansible-playbook -i hosts.ini deploy_ntpd.yml
ansible-playbook -i hosts.ini deploy_nagios_configs.yml

puppet apply --modulepath=/path/to/modules deploy_ntpd.pp
