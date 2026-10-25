{ ... }:

{
  services.vaultwarden = {
    enable = true;
    dbBackend = "sqlite";
    environmentFile = "/var/lib/vaultwarden/vaultwarden.env";

    config = {
      ROCKET_ADDRES = "127.0.0.1";
      ROCKET_PORT = "8222";
      ROCKET_LOG = "critical";

      #DOMAIN = "vault.mrxsloopy.xyz";
      SIGNUPS_ALLOWED = false;
      INVITATIONS_ALLOWED = true;

      WEBSOCKET_ENABLED = true;

      # SMTP
      # SMTP_HOST = "...";
      # SMTP_FROM = "...";
    };
  };
}
