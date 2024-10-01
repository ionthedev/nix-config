{ config, inputs, pkgs, ... }:

{
  imports = [
    ./config.nix
    ./binds.nix
    ./exec.nix
    #./scripts.nix
  ];

    home.packages = with pkgs; [
    hyprpicker
    hyprlock
    hypridle
    superfile
    swww
    rofi
    waybar
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    # Installed by the NixOS module

    xwayland.enable = true;
    systemd = {
      enable = true;
      variables = ["--all"];
    };
  };
}
