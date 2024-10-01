{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    wget
    git
    lshw
    zip
    unzip
    ripgrep
    htop
    btop
    fastfetch
    fuseiso
    imagemagick
    parted
    gparted
    tldr
    arp-scan
    neofetch

    # Nix stuff
    nix-index
    nh
    docker-compose
    sops

    # For playing audio
    sox # 'play' command

    # Performance
    s-tui
    stress

  ];

}
