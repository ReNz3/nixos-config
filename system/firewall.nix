{ config, pkgs, ... }:

{

  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 24800 8096 ];
  networking.firewall.allowedUDPPorts = [ 24800 8096 ];

  networking.firewall.enable = true;

}
