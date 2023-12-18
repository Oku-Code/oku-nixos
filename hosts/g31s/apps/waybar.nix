{ pkgs, config, ... }:

{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = [{
      height = 30;
      layer = "top";
      position = "bottom";
      tray = { spacing = 5; };
      modules-center = [ "sway/workspaces" ];
      modules-left = [ "clock" ];
      modules-right = [ "cpu" "pulseaudio" "network" "tray" ];
      clock = {
        format-alt = "{:%Y-%m-%d ~ %e %b}";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><smaill>{calendar}</small></tt>";
        today-format = "<b>{}</b>";
      };
      cpu = {
        format = "{usage}% ";
        interval = "1";
        tooltip = false;
        max-length = 13;
        min-length = 13;
      };
      network = {
        interval = 1;
        format-alt = "{ifname}: {ipaddr}/{cidr}";
        format-disconnected = "⚠";
        format-ethernet =
          "{ifname}: {ipaddr}/{cidr} ";
        format-linked = "{ifname} (No IP) ";
        # format-wifi = "{essid} ({signalStrength}%) ";
        tooltip-format-ethernet = " {ifname}\nIP: {ipaddr}\n {bandwidthUpBits}  {bandwidthDownBits}";
      };
      pulseaudio = {
        format = "{volume}% {icon} {format_source}";
        #format-bluetooth = "{volume}% {icon} {format_source}";
        # format-bluetooth-muted = " {icon} {format_source}";
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
    }];
 };
}
