U := root
VPF := tmp/ansible-vault-password

production-setup:
		ansible-playbook --user $U ansible/site.yml -i ansible/production -vv --vault-password-file=$(VPF)

production-deploy-app:
		ansible-playbook --user $U ansible/deploy.yml -i ansible/production -vv

