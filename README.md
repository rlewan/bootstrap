# Mac bootstrap

Utilizes [Ansible](https://www.ansible.com/) to set up a macOS machine.

## Usage

From the command line:

```bash
$ ./bootstrap.sh
```

This will:
- prompt Xcode installation,
- install [Rosetta 2](https://en.wikipedia.org/wiki/Rosetta_(software))
- install [Homebrew](https://brew.sh/),
- install [Ansible](https://www.ansible.com/),
- execute `playbook.yml` to perform remaining setup via Ansible.

## Caveats

The script is not fully automated, i.e. some human input will be required:

- [Xcode](https://developer.apple.com/xcode/) has to be installed manually,
