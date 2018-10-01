import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_ruby_version(host):
    cmd = host.run('/root/.rbenv/versions/2.5.1/bin/ruby --version')

    assert cmd.rc == 0
