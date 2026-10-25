{ pkgs, ... }:

{
  services.caddy = {
    enable = true;
    virtualHosts."server-main.tail4c783b.ts.net".extraConfig = ''
      reverse_proxy 127.0.0.1:8222
    '';
  };
}
