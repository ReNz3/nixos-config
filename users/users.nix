{ config, pkgs, ... }:

{
  users.users.rene = {
    isNormalUser = true;
    description = "Renè";
    extraGroups = [ "networkmanager" "wheel" "docker" "kvm" "libvirtd" "input" ];
    initialPassword = "123";
  };
}
