#!/bin/sh

ansible-galaxy collection install -r requirements.yaml

ansible-playbook prepare.yaml
