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

Unfortunately the script is not fully automated at the moment -- you may be asked for a root password a couple of times and will have to approve kernel extensions when installing [VirtualBox](https://www.virtualbox.org/). Just provide the password and re-run as needed, it will eventually finish successfully.  
