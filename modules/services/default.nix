{ ... }:

{
  imports = [
    ./tailscale.nix
    ./ups.nix
    ./vaultwarden.nix
    ./caddy.nix
  ];
}
