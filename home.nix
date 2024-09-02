{ config, pkgs, ... }:
let
in
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "filip";
  home.homeDirectory = "/home/filip";
  imports = [ ./config/sh.nix ];
  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    pkgs.nixd
    pkgs.luajitPackages.lua-lsp
    pkgs.llvmPackages_12.clang-tools
    pkgs.lua-language-server
    pkgs.pyright
    pkgs.nodePackages.typescript-language-server
    pkgs.rust-analyzer
    # pkgs.bash-language-server
    pkgs.gopls
    pkgs.emmet-language-server
    pkgs.htmx-lsp
    pkgs.stylua
    pkgs.gofumpt
    pkgs.prettierd
    pkgs.nixfmt-rfc-style
    pkgs.fishPlugins.done
    pkgs.fishPlugins.fzf
    pkgs.fishPlugins.forgit
    pkgs.fishPlugins.hydro
    pkgs.fishPlugins.grc
    pkgs.grc
    pkgs.bat
    pkgs.gh
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/filip/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
  programs.fzf = {
    enable = true;
    # emableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };
  programs.ranger = {
    enable = true;
    settings = {
      show_hidden = true;
      draw_borders = true;
      preview_images_method = "kitty";
    };
  };
  programs.vim = {
    enable = true;
    settings = {
      expandtab = true;
      tabstop = 4;
      history = 1000;
      background = "dark";
      number = true;
      relativenumber = true;
      smartcase = true;
    };
  };
  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
    };
  };
  programs.kitty = {
    enable = true;
    settings = {
      # background_opacity = 0.7;
      enable_audio_bell = false;
      update_check_interval = "0";
      scrollback_lines = 10000;
    };
    extraConfig = "background_opacity 0.7";
    shellIntegration.enableFishIntegration = true;
    font = {
      size = 11;
      name = "JetBrains Mono";
    };
  };
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
