import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')

def test_nvm(host):
    r = host.check_output('/root/.nvm/versions/node/v8.11.3/bin/node -v')
    assert r == "v8.11.3"
