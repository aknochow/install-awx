# Install-AWX

## Install AWX to a kubernetes cluster

Run this playbook on a prepared host:

`ansible-playbook install-awx.yaml`
##


_Tested on_:
- k3s
- k3d
- kind

## Requirements
1. Ansible
2. pip packages: 
    - authlib>=3.2.0
    - kubernetes
    
3. Galaxy Collections:
    - community.general 
    - kubernetes.core

## Prepare playbook 

`ansible-playbook prepare.yaml`

(_tested on rhel/centos/fedora_)

## Uninstall AWX

`ansible-playbook uninstall/uninstall-awx.yaml`
