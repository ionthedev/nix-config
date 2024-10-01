{ config, pkgs, ... }:

let
  # Replace 'alacritty' with your terminal emulator if different
  terminal = "${pkgs.alacritty}/bin/alacritty";
  nvimPath = "${pkgs.neovim}/bin/nvim";
in
{
  home.file.".config/godot/editor_settings-4.3.tres".text = ''
    [editor]
    external_editor = true

    [editor/external]
    exec_path = "${terminal} -e ${nvimPath}"
  '';
}
