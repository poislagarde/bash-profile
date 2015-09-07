# bash-profile

## Requirements

- macOS
- iTerm2
- brew (Homebrew)
- Git installed via brew
- Autojump installed via brew

## Installation

Clone repo somewhere and hard link your bash_profile

```bash
git clone git@github.com:poislagarde/bash-profile.git
ln [clone-dir]/bash_profile.sh ~/.bash_profile
```

## Git

Use this alias instead of installing git-up:

```bash
git config --global alias.up 'pull --rebase --autostash'
```

## ssh-agent

Add the following config in `~/.ssh/config`:

```
Host *
   UseKeychain yes
   AddKeysToAgent yes
   IdentityFile ~/.ssh/id_rsa
```
