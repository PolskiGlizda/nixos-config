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
    stylua
    gofumpt
    prettierd
    nixfmt-rfc-style
  ];
}
