.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  all                 Install infnoise and k3s"
	@echo "  infnoise            Install infnoise"
	@echo "  k3s                 Install k3s"

.PHONY: akv
akv:
	@ansible-playbook ./main.yaml --limit dev,haw --tags akv

.PHONY: infnoise
infnoise:
	@ansible-playbook ./main.yaml --limit dev,haw --tags infnoise

.PHONY: k3s
k3s:
	@ansible-playbook ./main.yaml --limit dev,haw --tags k3s

.PHONY: all
all:
	@ansible-playbook ./main.yaml --limit dev,haw --tags infnoise,k3s
