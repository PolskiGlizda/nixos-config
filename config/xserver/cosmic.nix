{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  services.desktopManager.cosmic = {
    enable = true;
    cosmic-greeter = {
      enable = true;
    };
  };
}
