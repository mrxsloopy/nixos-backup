{ ... }:

{
  imports = [
    ./boot.nix
    ./network.nix
    ./locale.nix
  ]
  # flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # user
  users.users.mrxsloopy = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = [ ];
  };
}
