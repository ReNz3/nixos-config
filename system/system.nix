{ config, pkgs, ... }:

{
  imports =
    [
      ./boot.nix
      ./time.nix
      ./network.nix
      ./language.nix
      ./sound.nix
      ./shell.nix
      ./fonts.nix
    ];

    virtualisation.libvirtd.enable=true;
}
