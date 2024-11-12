{
  lib,
  pkgs,
  config,
  namespace,
  ...
}:
with lib;
with lib.${namespace};
{
  imports = [ ./hardware.nix ];

  namsnath = {
    nix = enabled;

    # cli-apps = {
    #   neovim = enabled;
    #   tmux = enabled;
    # };

    tools = {
      git = enabled;
      misc = enabled;
      # fup-repl = enabled;
      # comma = enabled;
      # nix-ld = enabled;
      # bottom = enabled;
    };

    hardware = {
      networking = enabled;
    };

    # services = {
    #   openssh = enabled;
    #   tailscale = enabled;
    #   palworld = enabled;
    #   local-ai = enabled;
    # };

    # security = {
    #   doas = enabled;
    #   acme = {
    #     enable = false;
    #   };
    # };

    # virtualisation = {
    #   podman = enabled;
    # };

    system = {
      boot = enabled;
      fonts = enabled;
      # locale = enabled;
      time = enabled;
    };
  };

  system.stateVersion = "22.05";
}