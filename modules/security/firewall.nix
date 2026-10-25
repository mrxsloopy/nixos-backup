{ ... }:

{
  networking.firewall.allowedTCPPorts = [ 22 443 53 3001 ];
  networking.firewall.trustedInterfaces = [ "tailscale0" ];
  networking.firewall.allowedUDPPorts = [ 53 ];
  # checkReversePath = "loose";
}
