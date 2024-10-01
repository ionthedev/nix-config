{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    alacritty
  ];

# Configure Alacritty to use the D2CodingLigature Nerd Font
  home.file.".config/alacritty/alacritty.yml".text = ''
    window:
      padding:
        x: 5
        y: 5
      decorations: full

    font:
      normal:
        family: "D2CodingLigature Nerd Font"  # Specify the font family
        style: Regular                        # Style: Regular, Bold, Italic, etc.

      bold:
        family: "D2CodingLigature Nerd Font"  # Use the same font for bold text
        style: Bold

      italic:
        family: "D2CodingLigature Nerd Font"
        style: Italic

      size: 12.0  # Set the font size to your preference
  '';
}







