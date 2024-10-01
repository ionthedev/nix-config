{ lib, pkgs, ... }:

{


wayland.windowManager.hyprland.settings = {
    exec-once =
      [
        socket = writeShellScript "socket" ''
        wl-paste --type text --watch cliphist store &
        wl-paste --type image --watch cliphist store &
        swww init &

        swww img /home/ion/dotfiles/home-manager/home-manager/tokyo_alley_night.jpg &

        nm-applet --indicator &
        waybar &
        dunst &
        '';

      ]
  };

}