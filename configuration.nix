{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/defaultMain.nix
  ];

  system.stateVersion = "26.05";
}
