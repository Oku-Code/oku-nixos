{ pkgs, config, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      colors = {
        primary = {
          background = "0x${config.colorScheme.colors.base00}";
          foreground = "0x${config.colorScheme.colors.base06}";
        };
        cursor = {
          cursor = "0x${config.colorScheme.colors.base06}";
          text = "0x${config.colorScheme.colors.base06}";
        };
        bright = {
          black = "0x${config.colorScheme.colors.base00}";
          blue = "0x${config.colorScheme.colors.base00}";
          cyan = "0x${config.colorScheme.colors.base0C}";
          green = "0x${config.colorScheme.colors.base0B}";
          magenta = "0x${config.colorScheme.colors.base0C}";
          red = "0x${config.colorScheme.colors.base0E}";
          white = "0x${config.colorScheme.colors.base08}";
          yellow = "0x${config.colorScheme.colors.base09}";
        };
        normal = {
          black = "0x${config.colorScheme.colors.base00}";
          blue = "0x${config.colorScheme.colors.base0D}";
          cyan = "0x${config.colorScheme.colors.base0C}";
          green = "0x${config.colorScheme.colors.base0B}";
          magenta = "0x${config.colorScheme.colors.base0E}";
          red = "0x${config.colorScheme.colors.base08}";
          white = "0x${config.colorScheme.colors.base06}";
          yellow = "0x${config.colorScheme.colors.base0A}";
        };
      }; 

      font = {
        size = 14.0;
        normal.family = "IBM Plex Mono";
        bold.family =  "IBM Plex Mono";
        italic.family = "IBM Plex Mono";
      };

      window = {
        decorations = "none";
        padding = {
          x = 15; 
          y = 15;
        };
        opacity = 0.95;
      };
    };
  };
}
