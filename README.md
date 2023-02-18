# Install-AWX

## Install AWX to a kubernetes cluster

Run this playbook on a prepared host:

`ansible-playbook install-awx.yaml`

Obtain the admin password by exporting your deployed awx_name and then getting the secret from the cluster:
- `export AWX_NAME=awx-01`
- `kubectl -n $AWX_NAME get secret $AWX_NAME-admin-password -o jsonpath='{.data.password}' | base64 --decode`

##

### k8s tested:
- IBM Cloud IKS
> Choose an appropriate block storageclass for postgres. (https://ibm.github.io/kubernetes-storage/Lab3/)
>
> _Example in awx cr:_
>
>  `postgres_storage_class: ibmc-block-bronze`
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

## Prepare host automatically (Ansible must be pre-installed)
_This will install the requirements but may not work on systems with non-standard python installations_

`./prepare.sh`

or run the steps manually:

```
ansible-galaxy collection install -r requirements.yaml

ansible-playbook prepare.yaml
```

## Uninstall AWX

*This uninstalls awx and the operator deployment using the saved credentials*

*This deletes the namespace that AWX is in...*

*Be careful with this...*

`ansible-playbook uninstall-awx.yaml` -e "awx_hostname=thehostnameinyourartifactsdiryouwanttouninstall"
