**Note:** This repository’s Ansible configuration is out of date; instead, look at [home-manager.config](https://github.com/sestrella/home-manager.config) for a more recent version.

# devbox

[![Build](https://github.com/sestrella/devbox/actions/workflows/build.yml/badge.svg)](https://github.com/sestrella/devbox/actions/workflows/build.yml)

Ansible playbook to provision my local environment. All dotfiles are located in
a separate [repository][dotfiles] for better reusability.

## Requirements

- Python 3

## Getting Started

Create a virtual environment:

```sh
python -m venv .venv
```

Active the virtual environment:

```sh
# bash or zsh
source .venv/bin/activate
# fish
source .venv/bin/activate.fish
```

Install Python dependencies:

```sh
pip install -r requirements.txt
```

Run the playbook:

```sh
ansible-playbook site.yml -K
```

[dotfiles]: https://github.com/sestrella/dotfiles
