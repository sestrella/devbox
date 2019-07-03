# devbox

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

Run the main playbook:

```sh
pipenv run ansible-playbook site.yml
```

[asdf]: https://github.com/asdf-vm/asdf
[asdf-python]: https://github.com/danhper/asdf-python
