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
  home.packages = with pkgs; [
    fishPlugins.done
    fishPlugins.fzf
    fishPlugins.forgit
    fishPlugins.hydro
    fishPlugins.grc
  ];
}
