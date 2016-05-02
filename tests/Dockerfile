FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y ansible

# Install Ansible inventory file
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts
