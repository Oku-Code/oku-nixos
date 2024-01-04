{ pkgs, config, ... }:

{
  imports = [ ./waybar.nix ];

  wayland.windowManager.sway = {
    enable = true;
    systemd.enable = true;
    config = rec {
      modifier = "Mod4";
      terminal = "alacritty";
      input."*" = { xkb_layout = "es"; };
      output."*" = { bg = "~/pics/whale.png fill"; };
      fonts = {
        names = [ "IBM Plex Mono" "FontAwesome" ];
        style = "Bold Semi-Condensed";
        size = 11.0;
      };
      bars = [];
      gaps = { inner = 10; };
      menu = "wofi --show run";
    };
    extraConfig = ''
      default_border none
      bindsym Mod4+c exec grim -g "$(slurp)" ~/pics/screenshots/$(date +'%H:%M:%S.png')
      bindsym Mod4+x exec grim -g "$(slurp)" - | wl-copy
    '';
  };
}
