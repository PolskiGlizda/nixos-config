{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
let
in
{
  environment.systemPackages =
    (with pkgs; [
      # home-manager
      vim
      wget
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
    ])
    ++ (with pkgs-unstable; [ neovim ]);
}
