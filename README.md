# Development machine bootstrap

Utilizes [Ansible](https://www.ansible.com/) to setup a development machine (assumes it will be a macOS system).

## Usage

From the command line do

```bash
$ ./provision
```

This will:
- install [Homebrew](https://brew.sh/),
- install [Ansible](https://www.ansible.com/),
- execute the `ansible.yml` playbook to perform remaining setup. 
