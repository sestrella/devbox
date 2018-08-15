#!/usr/bin/python

DOCUMENTATION = '''
module: asdf_plugin
'''

EXAMPLES = '''
- name: Install ruby plugin
  asdf_plugin:
    name: ruby
    git_url: https://github.com/asdf-vm/asdf-ruby.git
'''

from ansible.module_utils.basic import AnsibleModule

def main():
    fields = {
        'name': {
            'required': True
        },
        'git_url': {
            'required': False
        },
        'state': {
            'choices': ['present', 'absent'],
            'default': 'present'
        }
    }

    module = AnsibleModule(argument_spec=fields)
    module.exit_json(msg=module.params)

if __name__ == '__main__':
    main()
