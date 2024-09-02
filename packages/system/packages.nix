{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
let
  unstable = pkgs-unstable;
in
{
  environment.systemPackages = with pkgs; [
    # home-manager
    vim
    wget
    unstable.neovim
    kitty
    ranger
    fzf
    tmux
    eza
    fastfetch
    git
    lua
    nerdfonts
    nodejs_22
    go
    python3
    jetbrains.goland
    jetbrains.phpstorm
    lsd
  ];
}
