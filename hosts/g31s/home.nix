{ config, pkgs, inputs, ... }:

{
  imports = [ 
    # nix-colors
    inputs.nix-colors.homeManagerModules.default

    # Imports from programs
    ./apps/sway.nix
    ./apps/git.nix
    ./apps/mako.nix

    # Imports from features or specific configurations
    ./features/alacritty.nix
    ./features/gtk.nix
    ./features/wofi.nix
  ];

  home.username = "oku";
  home.homeDirectory = "/home/oku";

  home.stateVersion = "23.05"; # Please read the comment before changing.

  home.packages = with pkgs;
    [
      font-awesome
      neofetch
      wofi

      # # It is sometimes useful to fine-tune packages, for example, by applying
      # # overrides. You can do that directly here, just don't forget the
      # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
      # # fonts?

      # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

      # # You can also create simple shell scripts directly inside your
      # # configuration. For example, this adds a command 'my-hello' to your
      # # environment:

      # (pkgs.writeShellScriptBin "my-hello" ''
      #   echo "Hello, ${config.home.username}!"
      # '')
    ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # "init.el".source = /.emacs.d;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };
  
  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
  };

  colorScheme = inputs.nix-colors.colorSchemes.onedark;

 # Editor
 # home.sessionVariables = { EDITOR = "emacs"; };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
}
