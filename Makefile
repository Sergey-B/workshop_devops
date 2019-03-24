include make-app.mk
include make-ansible.mk

setup: development-setup-env app-build app-install-deps app-db-prepare

