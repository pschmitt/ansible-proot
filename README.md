# Installation

This repo holds a wrapper for ansible. It uses an alpine proot image with
ansible on board. Somehow this gets around the sem_open issue on Android 🤷

## Setup

Run the `install.sh` script on your termux host.

# Usage

## With zplugin

```bash
if command -v termux-info > /dev/null
  zplugin ice wait lucid pick"/dev/null" \
    atclone'ln -sf $(realpath ansible.sh) ~/bin/ansible;
    ln -sf $(realpath ansible-playbook.sh) ~/bin/ansible-playbook'
  zplugin light pschmitt/ansible-proot
fi
```
