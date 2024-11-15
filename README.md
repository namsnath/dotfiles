# nix dotfiles

Reference: https://github.com/jakehamilton/config

```
# In dotfiles directory
sudo nixos-rebuild switch --flake .

sudo nixos-rebuild switch --flake .#<hostname>


# Update the lock file
nix flake update
```