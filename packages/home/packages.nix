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
  home.packages =
    (with pkgs; [
      gh
      grc
      bat
    ])
    ++ (with unstable; [ lazygit ]);
}
