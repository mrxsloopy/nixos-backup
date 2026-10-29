{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/defaultMain.nix
  ];

  age.identityPaths = [ "/var/lib/age-server-key.txt" ];

  system.stateVersion = "26.05";
}
