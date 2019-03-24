include make-app.mk
include make-ansible.mk
include make-production.mk

setup: development-setup-env app-build app-install-deps app-db-prepare

terraform-vars-generate:
		ansible-playbook ansible/terraform.yml -i ansible/production -vv --vault-password-file=tmp/ansible-vault-password

ansible-vaults-edit:
		ansible-vault edit ansible/production/group_vars/all/vault.yml --vault-password-file=tmp/ansible-vault-password
