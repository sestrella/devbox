# devbox

[![Build Status](https://travis-ci.org/sestrella/devbox.svg?branch=master)](https://travis-ci.org/sestrella/devbox)

Ansible roles used to provision my local environment

## Requirements

- Install [asdf][asdf]
- Install [asdf-python][asdf-python]

## Getting Started

Install python:

```sh
asdf install
```

Install package manager:

```sh
pip install --upgrade pipenv
```

Install dependencies:

```sh
pipenv install
```

Install Ansible galaxies:

```sh
pipenv run ansible-galaxy install -r requirements.yml
```

Adjust all [group_vars/all](group_vars/all) variables accordingly, and run the
main playbook:

```sh
pipenv run ansible-playbook site.yml -K
```

[asdf]: https://github.com/asdf-vm/asdf
[asdf-python]: https://github.com/danhper/asdf-python
