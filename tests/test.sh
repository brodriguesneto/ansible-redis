#!/bin/env bash

# Destroy every previous vagrant box
vagrant destroy -f

# Create new one(s)
vagrant up

# Check the role syntax correction
ansible-playbook --syntax-check -vv playbook.yml

# Applied the role
ansible-playbook -vv playbook.yml

# Verify the idempotence of the role
ansible-playbook -vv playbook.yml

# Destroy every leaved vagrant box
vagrant destroy -f
