#!/bin/sh

ansible-galaxy collection install community.general kubernetes.core

ansible-playbook prepare.yaml
