{ config, pkgs, ... }:
let
  Aliases = {
    ".." = "cd ..";
    "la" = "lsd -la";
    "c" = "clear && fastfetch";
    "ls" = "lsd -l";
    "cat" = "bat";
    "tree" = "eza -A --tree";

  };
in
{

  programs.bash = {
    enable = true;
    shellAliases = Aliases;
    initExtra = "fastfetch";
  };
  programs.zsh = {
    enable = true;
    shellAliases = Aliases;
    autocd = true;
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-user";
          repo = "zsh-autosuggestions";
          rev = "v0.6.4";
          sha256 = "0h52p2waggzfshvy1wvhj4hf06fmzd44bv6j18k3l9rcx6aixzn6";
        };
      }
      {
        name = "fast-syntax-highlighting";
        src = pkgs.fetchFromGitHub {
          owner = "zdharma";
          repo = "fast-syntax-highlighting";
          rev = "v1.55";
          sha256 = "0h7f27gz586xxw7cc0wyiv3bx0x3qih2wwh05ad85bh2h834ar8d";
        };
      }
    ];
    initExtra = "fastfetch";
  };
  programs.fish = {
    enable = true;
    shellAliases = Aliases;
    plugins = [
      {
        name = "done";
        src = pkgs.fishPlugins.done;
      }
      {
        name = "fzf";
        src = pkgs.fishPlugins.fzf;
      }
      {
        name = "forgit";
        src = pkgs.fishPlugins.forgit;
      }
      {
        name = "hydro";
        src = pkgs.fishPlugins.hydro;
      }
      {
        name = "grc";
        src = pkgs.fishPlugins.grc;
      }
    ];
    # shellInitLast = "fastfetch";
  };
}
