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

## Caveats

Unfortunately the script is not fully automated, i.e. it will ask for some human input:

- you will be asked for a root password during [Spotify](https://www.spotify.com/) and [VirtualBox](https://www.virtualbox.org/) installation,
- you will have to approve kernel extensions when installing [VirtualBox](https://www.virtualbox.org/). The script will fail the first time but a re-run will succeed after approving,
- [Vundle](https://github.com/VundleVim/Vundle.vim) plugins are not installed automatically, you have to open [Vim](https://www.vim.org/) and run `:PluginInstall` to install them.
