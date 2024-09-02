{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  boot = {
    kernelPackages = pkgs-unstable.linuxPackages_latest;
    loader = {
      systemd-boot = {
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };
}
