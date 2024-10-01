{ config, pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    inputs.nixvim.packages."x86_64-linux".default  # Use the nixvim package
  ];
}
