# home-server

[Ansible](https://github.com/ansible/ansible) playbook for configuring whatever
server will be managing my home-server (system that provides services like
local DNS and Unifi Protect video backup).

## Setup

1. Install Ansible: `pip install --user git+https://github.com/ansible/ansible.git@v2.13.3`
1. Add vault password to `.vault-pass`
1. Install `sshpass`: `sudo port install sshpass`

## Server Prep

Some things need to be done on the server manually before it is ready to
accept Ansible automation.

1. Update `/etc/ssh/sshd_config` to enable "PasswordAuthentication yes"
1. `ln -s /etc/sv/sshd /var/service`
1. Make sure non-root user is added: `useradd -m jsumners && passwd jsumners`
1. `xbps-install -y python3`

Finally, run `ansible-playbook main.yml`.
