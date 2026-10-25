{ ... }:

{
  networking.firewall.allowedTCPPorts = [ 22 443 ];
  networking.firewall.trustedInterfaces = [ "tailscale0" ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false;
  # checkReversePath = "loose";
}
