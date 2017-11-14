# Makefile for pi-stack-ansible-tower-scripts

.PHONY: ev dump dumpvars ping reboot halt off red green blue wifi


ev:
	ansible-vault edit group_vars/vault

dump:
	ansible -i inventory windows -m setup

dumpvars:
	ansible -i inventory -m debug -a 'var=hostvars[inventory_hostname]' all
	
ping:
	ansible windows -i inventory -m win_ping

