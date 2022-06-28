# devbox

[![CI](https://github.com/sestrella/devbox/actions/workflows/ci.yml/badge.svg)](https://github.com/sestrella/devbox/actions/workflows/ci.yml)

Ansible playbook to provision my local environment. All the dotfiles could be
found in a separate [repository][dotfiles].

## Requirements

- Install [asdf][asdf]
- Install [asdf-python][asdf-python]

## Getting Started

Install python:

```sh
asdf install
```

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

Install Ansible dependencies:

```sh
ansible-galaxy install -r requirements.yml
```

Adjust all [group_vars/all](group_vars/all) variables accordingly, and run the
main playbook:

```sh
ansible-playbook site.yml -K
```

[asdf]: https://github.com/asdf-vm/asdf
[asdf-python]: https://github.com/danhper/asdf-python
[dotfiles]: https://github.com/sestrella/dotfiles
