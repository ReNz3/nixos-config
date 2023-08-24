{ config, pkgs, ... }:

{
  imports =
    [
      #machine configurations (select 1)
      ./machines/xps/configuration.nix
      # main pc

      #Graphical
      ./graphical/kde.nix

      #system
      ./system/system.nix

      #users
      ./users/users.nix

      #Applications
      ./apps/default.nix
      ./apps/steam.nix
      ./apps/waydroid.nix

      #Services
      ./services/flatpak.nix
      ./services/openssh.nix
      ./services/printing.nix

    ];

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.autoUpgrade = {
    enable=true;
    persistent=true;
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

}
