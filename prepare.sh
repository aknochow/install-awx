#!/bin/sh

echo "Shell script wrapper to prepare and deploy in one step..."

ansible-galaxy collection install -r requirements.yaml

ansible-playbook prepare.yaml

ansible-playbook install-awx.yaml
