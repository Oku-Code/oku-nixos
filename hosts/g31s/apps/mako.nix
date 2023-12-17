{ pkgs, config, ... }:

{
  services.mako = {
    enable = true;
    layer = "overlay";
    backgroundColor = "#${config.colorScheme.colors.base01}";
    borderColor = "#${config.colorscheme.colors.base0E}";
    borderRadius = 5;
    borderSize = 2;
    textColor = "#${config.colorscheme.colors.base04}";
  };
}
