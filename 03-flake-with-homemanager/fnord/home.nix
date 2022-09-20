{ config, pkgs, ... }:
let
  userName = "fnord";
in {
  home.username = userName;
  home.homeDirectory = "/home/${userName}";

  home.stateVersion = "22.05";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [ 
    alacritty
    kitty
 ];

  programs =  {
    home-manager.enable = true;
  };

  home.file = {
    ".config/kitty".source = ./kitty;
  };

}


