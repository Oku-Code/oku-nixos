{ pkgs, config, ... }:

{ 
  programs.git = { 
    enable = true;
    userName = "Oku-Code";
    userEmail = "OkuNull@protonmail.com";
  };
}
