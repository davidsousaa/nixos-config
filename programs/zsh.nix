{ config, pkgs, ... }:

{
  users.defaultUserShell = pkgs.zsh;

  environment.systemPackages = with pkgs; [
    zsh
    oh-my-zsh
  ];

  programs.zsh = {
    enable = true;

  	enableCompletion = true;
  	autosuggestions.enable = true;
  	syntaxHighlighting.enable = true;

    shellAliases = {
     	ll = "ls -l";
     	update = "sudo nixos-rebuild switch";

      ga="git add";
      gp="git push";
      gl="git pull";
      gd="git diff";
      gst="git status";
      glog="git log --oneline --decorate --graph";
      gsw="git switch";
      clean-gens="sudo nix-env -p /nix/var/nix/profiles/system --delete-generations old";

      currDate="date +%Y-%m-%d";
    };
    
    ohMyZsh = {
     	enable = true;
     	plugins = [ "git" ];
     	theme = "robbyrussell";
    };
  };
}
