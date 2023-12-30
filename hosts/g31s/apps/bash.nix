{ pkgs, config, ... }:

{ 
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -lha";
      em = "emacsclient -c";
      bt = "bat --theme Nord";
      ".." = "cd ..";
    };
  };
}
