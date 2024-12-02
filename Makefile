.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  k3s                 Install k3s"
	@echo ""

.PHONY: k3s
k3s:
	@ansible-playbook ./main.yaml --limit dev,haw --tags k3s
