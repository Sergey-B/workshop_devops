
development-setup-env:
	ansible-playbook ansible/development.yml -i ansible/development -vv

ansible-vaults-encrypt:
	ansible-vault encrypt ansible/production/group_vars/all/vault.yml --vault-password-file=tmp/ansible-vault-password

ansible-vaults-decrypt:
	ansible-vault decrypt ansible/production/group_vars/all/vault.yml --vault-password-file=tmp/ansible-vault-password
