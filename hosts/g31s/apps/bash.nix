{ pkgs, config, ... }:

{ 
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -lha";
      cat = "bat --theme OneHalfDark";
      ".." = "cd .."
    };
  };
}
