{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  services.desktopManager.cosmic = {
    enable = true;
  };
  services.displayManager.cosmic-greeter = {
    enable = true;
  };
}
