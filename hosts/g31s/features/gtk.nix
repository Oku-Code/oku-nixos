{ pkgs, config, ... }:
{
  gtk = {
    enable = true;
    cursorTheme.package = pkgs.bibata-cursors;
    font.name = "Roboto";
    cursorTheme.name = "Bibata-Modern-Ice";
    theme.package = pkgs.arc-theme;
    theme.name = "Arc-Dark";
    iconTheme.package = pkgs.tela-circle-icon-theme;
    iconTheme.name = "Tela-Circle";
    
  };
}
