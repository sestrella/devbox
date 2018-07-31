import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_node_version(host):
    v = host.check_output('/root/.nvm/versions/node/v8.11.3/bin/node -v')
    assert v == "v8.11.3"
