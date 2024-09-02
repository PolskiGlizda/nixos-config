{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  imports = [
    # ./budgie.nix
    # ./cinnamon.nix
    # ./xmodan.nix
    ./cosmic.nix
  ];
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "pl";
        variant = "";
      };
      displayManager = {
        lightdm = {
          enable = true;
        };
      };
    };
  };
}
