{config, pkgs, pkgs-unstable, ...}:
{
    services.xserver.windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
        };
    }
