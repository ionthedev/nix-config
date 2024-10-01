{ config, pkgs, ... }:

{
  # Install Zsh, Starship, and Oh My Zsh (if needed)
  home.packages = with pkgs; [
    zsh
    starship
    oh-my-zsh # Optional if you still want to use Oh My Zsh plugins
  ];

  # Enable Zsh and Oh My Zsh (if needed)
  programs.zsh = {
    enable = true;

    # Enable Oh My Zsh if you want to keep using its plugins
    oh-my-zsh = {
      enable = true;
      # Disable the Oh My Zsh theme since Starship will handle the prompt
      theme = "jonathan";
      plugins = [ "git" "z" ];  # Add any additional plugins you'd like
    };

    # Add Starship to the shell initialization
    initExtra = ''
      eval "$(starship init zsh)"
    '';
  };
}

