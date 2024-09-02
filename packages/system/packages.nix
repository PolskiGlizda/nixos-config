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
      jetbrains.webstorm
      jetbrains.clion
      jetbrains.rider
      jetbrains.rust-rover
      lsd
      firefox
      dmenu
    ])
    ++ (with pkgs-unstable; [ neovim ]);
}
