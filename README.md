# Install-AWX

## Install AWX to a kubernetes cluster

Run this playbook on a prepared host:

`ansible-playbook install-awx.yaml`
##


_Production k8s tested_:
- IBM Cloud IKS
> Choose an appropriate block storageclass for postgres.  Read more about block storage on IBM Kubernetes here: https://ibm.github.io/kubernetes-storage/Lab3/.  Example in awx cr:
> - `postgres_storage_class: ibmc-block-bronze`
- k3s

_Development k8s tools tested_:
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

## Prepare host automatically
_This will install the requirements but may not work on systems with non-standard python installations_

`ansible-playbook prepare.yaml`

## Uninstall AWX

*This is a lazy temporary uninstall that removes everything in the namespace and then the namespace.*

*I'm working on a proper 'un-deploy' playbook.*

*Be careful with this...*

`ansible-playbook uninstall/uninstall-awx.yaml`
