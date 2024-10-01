{ config, nixpkgs, pkgs, ... }:

{
  home.packages = with pkgs; [
    godot_4
  ];
}

