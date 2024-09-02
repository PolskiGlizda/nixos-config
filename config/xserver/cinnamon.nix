{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  services.xserver.desktopManager.cinnamon = {
    enable = true;
  };
}
