{ pkgs, ... }:

{
  services.caddy = {
    enable = true;
    virtualHosts."server-main.tail4c783b.ts.net".extraConfig = ''
      tls /var/lib/caddy/tailscale/cert.crt /var/lib/caddy/tailscale/cert.key

      handle /vault* {
        reverse_proxy 127.0.0.1:8222
      }

      handle_path /forgejo* {
        reverse_proxy 127.0.0.1:3000
      }
    '';
  };
}
