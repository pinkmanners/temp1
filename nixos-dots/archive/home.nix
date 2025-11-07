{ config, pkgs, ... }:

{
  home.username = "jayden";
  home.homeDirectory = "/home/jayden";

  programs.git = {
    enable = true;
    userName = "pinkmanners";
    userEmail = "inbox@pinkmanners.cc";
  };

  home.stateVersion = "25.05";
}
