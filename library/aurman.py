#!/usr/bin/python

from ansible.module_utils.basic import AnsibleModule


def main():
    module = AnsibleModule(
        argument_spec=dict(
            name=dict(type='str'),
            state=dict(type='str', default='present', choices=['present']),
            update_cache=dict(type='bool', default=False)
        )
    )

    aurman_path = module.get_bin_path('aurman', True)

    p = module.params

    if p['state'] == 'present':
        install_packages(module, aurman_path, p['name'])


def install_packages(module, aurman_path, name):
    rc, stdout, stderr = module.run_command('%s -S %s --needed --noconfirm' % (aurman_path, name), check_rc=False)

    if rc != 0:
        module.fail_json(msg='failed to install %s: %s' % (name, stderr))

    module.exit_json(changed=False)


if __name__ == '__main__':
    main()
