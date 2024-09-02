{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  environment.shells = [
    pkgs.bash
    pkgs.zsh
    pkgs-unstable.fish
  ];
  programs.zsh.enable = true;
  programs.fish.enable = true;
}
