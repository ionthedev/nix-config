{
  imports = [
    # Paths to other modules.
    # Compose this module out of smaller ones.

    ./programming.nix
    ./hyprland
    ./nixvim.nix
    ./zsh.nix
    ./godot.nix
    ./godot_mono.nix
    ./remmina.nix
    ./github-desktop.nix
    ./chromium.nix
    ./obsidian.nix
    ./vesktop.nix
    ./cli.nix
    ./superfile.nix
    ./starship.nix
    ./nerdfonts.nix
    ./alacritty.nix
    ./obs.nix
    ./lazygit.nix
    ./gimp.nix
  ];
	

  options = {
    # Option declarations.
    # Declare what settings a user of this module can set.
    # Usually this includes a global "enable" option which defaults to false.
  };

  config = {
    # Option definitions.
    # Define what other settings, services and resources should be active.
    # Usually these depend on whether a user of this module chose to "enable" it
    # using the "option" above. 
    # Options for modules imported in "imports" can be set here.
  };
}
