# NixOs config

Still a basic NixOS config, a project in the making.

Relevant programs/services used:
- i3
- polybar
- alacritty
- zsh (oh-my-zsh)

### To-Do
- [X] Add i3 config
- [ ] Add alacritty config
- [ ] Add home manager
- [ ] Improve structure

## Installation

1. Clone the repository to your $HOME directory
2. `sudo ln $HOME/nixos-config/configuration.nix /etc/nixos/configuration.nix`
3. `sudo nixos-rebuild switch`

Every change to the config is made in `$HOME/nixos-config`
