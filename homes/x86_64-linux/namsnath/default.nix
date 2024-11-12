{
  lib,
  pkgs,
  config,
  osConfig ? { },
  format ? "unknown",
  namespace,
  ...
}:
with lib.${namespace};
{
  namsnath = {
    user = {
      enable = true;
      name = config.snowfallorg.user.name;
    };

    cli-apps = {
      zsh = enabled;
      # neovim = enabled;
      home-manager = enabled;
    };

    tools = {
      git = enabled;
      # direnv = enabled;
    };
  };
}