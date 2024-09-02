{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  networking = {
    hostname = "FilLAP";
    networkmanager = {
      enable = true;
    };
  };
}
