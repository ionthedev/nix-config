{ config, inputs, pkgs, ... }:

let
 startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
	${pkgs.waybar}/bin/waybar &
	${pkgs.swww}/bin/swww init &
	sleep 1

'';

in
{
wayland.windowManager.hyprland.settings = {
    exec-once = ''${startupScript}/bin/start'';
      };

}
