{ pkgs, config, ... }:

{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = [
      {
        height = 30;
        layer = "top";
        position = "bottom";
        tray = {
          spacing = 10;
        };
        modules-center = [ "sway/window" ];
        modules-left= [ "sway/workspaces" ];
        modules-right= [ "pulseaudio" "network" "cpu" "tray" "clock"];
        clock = {
          format-alt = "{:%Y-%m-%d}";
          tooltip-format = "{:%Y-%m-%d | %H:%M}";
        };
        cpu = {
          format = "{usage}% ";
          tooltip = false;
        };
        network = {
          interval = 1;
          format-alt = "{ifname}: {ipaddr}/{cidr}";
          format-disconnected = "Disconnected ⚠";
          format-ethernet = "{ifname}: {ipaddr}/{cidr}   up: {bandwidthUpBits} down: {bandwidthDownBits}";
          format-linked = "{ifname} (No IP) ";
          format-wifi = "{essid} ({signalStrength}%) ";
        };
        pulseaudio = {
          format = "{volume}% {icon} {format_source}";
          format-bluetooth = "{volume}% {icon} {format_source}";
          format-bluetooth-muted = " {icon} {format_source}";
          format-icons = {
            car = "";
            default = [ "" "" "" ];
            handsfree = "";
            headphones = "";
            headset = "";
            phone = "";
            portable = "";
        };
          format-muted = " {format_source}";
          format-source = "{volume}% ";
          format-source-muted = "";
        };
      }
    ]; 
  };
}
