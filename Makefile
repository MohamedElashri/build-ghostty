# cspell:ignore precommit
SHELL := /bin/bash

.PHONY: all
all: update-precommit

.PHONY: update-precommit
update-precommit:
	pre-commit autoupdate

.PHONY: pre-commit-run-all-files
pre-commit-run-all-files:
	for i in $(shell grep -e "- id:" ".pre-commit-config.yaml" | sed 's/ *- id: //g'); do \
	  read -n1 -rp "Use $${i}? (y/N) "; \
	  if [[ "$${REPLY}" == "y" ]]; then \
	    echo -e "\n$${i}"; \
	    pre-commit run $${i} --all-files; \
	  else \
	    echo -e "\nSkipped $${i}."; \
	  fi; \
	done
