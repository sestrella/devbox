import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_pyenv_version(host):
    cmd = host.run('/root/.pyenv/bin/pyenv --version')

    assert cmd.rc == 0
    assert '1.2.8' in cmd.stdout


def test_rbenv_version(host):
    cmd = host.run('/root/.rbenv/bin/rbenv --version')

    assert cmd.rc == 0
    assert '1.1.1' in cmd.stdout
