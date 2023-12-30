{ pkgs, config, ... }:

{
  programs.wofi = {
    enable = true;
    settings = {
      allow_images = true;
      allow_markup = true;
      location = "bottom-right";
    };
    style = ''
@define-color base00 #${config.colorScheme.colors.base00};
@define-color base01 #${config.colorScheme.colors.base01};
@define-color base02 #${config.colorScheme.colors.base02};
@define-color base03 #${config.colorScheme.colors.base03};
@define-color base04 #${config.colorScheme.colors.base04};
@define-color base06 #${config.colorScheme.colors.base05};
@define-color base06 #${config.colorScheme.colors.base06};
@define-color base07 #${config.colorScheme.colors.base07};
@define-color base08 #${config.colorScheme.colors.base08};
@define-color base09 #${config.colorScheme.colors.base09};
@define-color base0A #${config.colorScheme.colors.base0A};
@define-color base0B #${config.colorScheme.colors.base0B};
@define-color base0C #${config.colorScheme.colors.base0C};
@define-color base0D #${config.colorScheme.colors.base0D};
@define-color base0E #${config.colorScheme.colors.base0E};
@define-color base0F #${config.colorScheme.colors.base0F};

window {
    opacity: 0.9;
    border:  0px;
    border-radius: 10px;
    font-family: Iosevka;
    font-size: 14px;
}

#input {
    border-radius: 10px 10px 0px 0px;
    border:  0px;
    padding: 5px;
    margin: 0px;
    font-size: 14px;
    color: @base0C;
    background-color: @base02;
}

#inner-box {
    margin: 0px;
    color: @base06;
    background-color: @base00;
}

#outer-box {
    margin: 0px;
    background-color: @base00;
    border-radius: 10px;
}

#selected {
    background-color: @base0D;
}

#entry {
    padding: 0px;
    margin: 0px;
    background-color: @base00;
}

#scroll {
    margin: 5px;
    background-color: @base00;
}

#text {
    margin: 0px;
    padding: 2px 2px 2px 10px;
}
    '';
  };
}
