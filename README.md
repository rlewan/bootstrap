# Development machine bootstrap

Utilizes [Ansible](https://www.ansible.com/) to setup a macOS development machine.

## Usage

From the command line:

```bash
$ ./bootstrap.sh
```

This will:
- prompt Xcode installation,
- install [Homebrew](https://brew.sh/),
- install [Ansible](https://www.ansible.com/),
- execute `playbook.yml` to perform remaining setup via Ansible.

## Caveats

The script is not fully automated, i.e. some human input will be required:

- you will be asked for a root password during [Spotify](https://www.spotify.com/), [VirtualBox](https://www.virtualbox.org/) and [Wireshark](https://www.wireshark.org/) installation,
- you will have to approve kernel extensions when installing [VirtualBox](https://www.virtualbox.org/). The script will fail the first time but a re-run will succeed after approving,
- [Vundle](https://github.com/VundleVim/Vundle.vim) plugins are not installed automatically, you have to open [Vim](https://www.vim.org/) and run `:PluginInstall` to install them.
