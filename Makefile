ANSIBLE_VAULT_PASSWORD_FILE := "./scripts/vault.bash"

lint:
	@ANSIBLE_VAULT_PASSWORD_FILE=$(ANSIBLE_VAULT_PASSWORD_FILE) pre-commit run --all-files

check:
	@ANSIBLE_VAULT_PASSWORD_FILE=$(ANSIBLE_VAULT_PASSWORD_FILE) pre-commit run --all-files
	@ANSIBLE_VAULT_PASSWORD_FILE=$(ANSIBLE_VAULT_PASSWORD_FILE) ansible-playbook .setup_project.yml --check --diff

commit:
	@ANSIBLE_VAULT_PASSWORD_FILE=$(ANSIBLE_VAULT_PASSWORD_FILE) git commit