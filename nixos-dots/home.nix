{ config, pkgs, ... }:

{
  home.username = "jayden";
  home.homeDirectory = "/home/jayden";

  programs.git = {
    enable = true;
    userName = "pinkmanners";
    userEmail = "inbox@pinkmanners.cc";
  };

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

  };

  home.stateVersion = "25.05";
}
