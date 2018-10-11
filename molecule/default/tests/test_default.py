import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_nodejs(host):
    cmd = host.run('/root/.asdf/installs/nodejs/8.12.0/bin/node --version')

    assert cmd.rc == 0
    assert '8.12.0' in cmd.stdout


def test_python(host):
    cmd = host.run('/root/.asdf/installs/python/3.7.0/bin/python --version')

    assert cmd.rc == 0
    assert '3.7.0' in cmd.stdout


def test_ruby(host):
    cmd = host.run('/root/.asdf/installs/ruby/2.5.1/bin/ruby --version')

    assert cmd.rc == 0
    assert '2.5.1' in cmd.stdout
