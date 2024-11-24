ping:
	ansible all -i inventory.ini -u root -m ping

update_cache:
	ansible-playbook playbooks/setup_environment.yml --tags update_cache -i inventory.ini

install_packages:
	ansible-playbook playbooks/setup_environment.yml --tags install_packages -i inventory.ini

create_users:
	ansible-playbook playbooks/setup_environment.yml --tags create_users -i inventory.ini

all:
	ansible-playbook playbooks/setup_environment.yml -i inventory.ini
