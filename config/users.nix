{config, pkgs, pkgs-unstable, ...}:
{
    users.defaultUserShell = pkgs.zsh;
    users.users.filip = {
        isNormalUser = true;
        description = "Filip";
        extraGroups = ["networkmanager" "wheel"];
        shell = pkgs-unstable.fish;
        };
}
