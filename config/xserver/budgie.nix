{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  services.xserver = {
    desktopManager.budgie = {
      enable = true;
    };
  };
}
