{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  networking.hostName = "rene-laptop";

  hardware.bluetooth.enable = true;

  services.xserver.libinput.enable = true;

}

