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