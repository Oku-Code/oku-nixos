{ pkgs, config, ... }:

{ 
  imports = [
    ./waybar.nix
  ];

   wayland.windowManager.sway = {
     enable = true;
     systemd.enable = true;
     config = rec {
       modifier = "Mod4";
       terminal = "alacritty";
       input."*" = { xkb_layout = "es"; };
       output."*" = { bg = "~/pics/wall3.jpg fill"; };
       fonts = {
         names = [ "Fira Code" "FontAwesome" ];
         style = "Bold Semi-Condensed";
         size = 11.0;
       };
       bars = [
         #{
         #  position = "top";
         #  statusCommand = "${pkgs.i3status}/bin/i3status";
         #}
       ];
       gaps = {
         inner = 10;
       };
     };
     extraConfig = ''
      default_border none
      bindsym Mod4+c exec grim -g "$(slurp)" ~/pics/screenshots/$(date +'%H:%M:%S.png')
     '';
   };  
}
