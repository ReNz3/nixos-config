{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  # Configure keymap in X11
  services.xserver = {
    layout = "de";
    xkbVariant = "";
  };

  # Configure console keymap
  console.keyMap = "de";


  networking.hostName = "rene-laptop";

  hardware.bluetooth.enable = true;

  services.xserver.libinput.enable = true;

  # This will save you money and possibly your life!
  services.thermald.enable = true;

 services.xserver.videoDrivers = [ "intel" "nvidia" ];
 boot.blacklistedKernelModules = [ "nouveau" "bbswitch" ];
  hardware.nvidia = {
    # Modesetting should be enabled to prevent screen tearing
    modesetting.enable = true;

    # Reverse sync is not compatible with the open source kernel module
    open = false;

    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };

      intelBusId = "PCI:0:2:0";

      nvidiaBusId = "PCI:1:0:0";
    };
  };

}

