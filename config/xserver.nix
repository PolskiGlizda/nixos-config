{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
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
      desktopManager = {
        budgie = {
          enable = true;
        };
        cinnamon = {
            enable = true;
            };
      };
    };
  };
}
