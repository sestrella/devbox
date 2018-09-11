import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_data_dir(host):
    f = host.file('/var/lib/postgres/data')

    assert f.exists
    assert f.user == 'postgres'
    assert f.group == 'postgres'