{ config, pkgs, ... }:

{
  users.users.rene = {
    isNormalUser = true;
    description = "Renè";
    extraGroups = [ "networkmanager" "wheel" ];
    initialPassword = "123";
  };
}
