{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  modules = [
    # ./budgie.nix
    ./cinnamon.nix
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
