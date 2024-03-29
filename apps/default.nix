 { config, lib, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    gcc
    tldr
    thefuck
    firefox
    kate
    thunderbird
    neofetch
    obs-studio
    flameshot
    gimp
    gparted
    neovim
    remmina
    lutris
    #bitwarden
    discord
    lunatask
    kdeconnect
    teamviewer
    protonvpn-gui
    transmission-qt
    docker-compose
    qemu
    libvirt
    virt-manager
  ];

  programs.kdeconnect.enable = true;
    services.teamviewer.enable = true;
}
