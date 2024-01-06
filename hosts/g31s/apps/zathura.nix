{ pkgs, config, ... }:

{
  programs.zathura = {
    enable = true;
    options = {
      recolor = true;
      default-bg = "#18191e";
      default-fg = "#FFEE79";
      recolor-lightcolor = "#21252d";
      recolor-darkcolor = "#fffade";
      notification-error-bg = "#fc2929";
      notification-error-fg = "#18191e";
      notification-warning-bg = "#e25600";
      notification-warning-fg = "#18191e";
      notification-bg = "#d68eb2";
      notification-fg = "#18191e";
      completion-bg = "#18191E" ; 
      completion-fg = "#44B273"; 
      completion-group-bg = "#18191E"; 
      completion-group-fg  = "#ED722E" ;
      completion-highlight-bg = "#FFFF00" ;
      completion-highlight-fg  =    "#21252D"; 
      index-bg = "#18191E" ;
      index-fg = "#44B273" ;
      index-active-bg = "#21252D" ;
      index-active-fg = "#FFFF00" ;
      inputbar-bg  = "#21252D" ;
      inputbar-fg  = "#FFFADE" ;
      statusbar-bg = "#21252D" ;
      statusbar-fg = "#D68EB2" ;
      highlight-color = "#D68EB2" ;
      highlight-active-color = "#ff79c6" ;
      render-loading =  true;
      render-loading-fg = "#FFEE79" ;
      render-loading-bg = "#18191E" ;
    };
  };
}
