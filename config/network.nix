{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  networking = {
    hostName = "FilLAP";
    networkmanager = {
      enable = true;
    };
  };
}
