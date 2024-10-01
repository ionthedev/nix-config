{ config, pkgs, chaotic, ... }:

{
  home.packages = with pkgs; [
    chaotic.packages.${pkgs.system}.godot_4-mono
  ];
}

