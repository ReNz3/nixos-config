{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  networking.hostName = "rene-laptop"; # Define your hostname.
}

