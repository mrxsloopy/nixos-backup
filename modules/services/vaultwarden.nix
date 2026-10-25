{ ... }:

{
  services.vaultwarden = {
    enable = true;
    dbBackend = "sqlite";
    #environmentFile = "/var/lib/vaultwarden/vaultwarden.env";
    ADMIN_TOKEN = ''$argon2id$v=19$m=65540,t=3,p=4$8uuF2nYp6eEbzl9vt5NnN+zI6yCpBRDDUZ3WTr8lAgk$mOBXQ3te3iYnJq9tc0FzYyGfykQg+cZeYDie3qyDBPw''

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
