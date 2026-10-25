{ pkgs, ... }:

{
  services.forgejo = {
    enable = true;
    database.type = "sqlite3";
    lfs.enable = true;

    setting = {
      server = {
        DOMAIN = "server-main.tail4c783b.ts.net";
        ROOT_URL = "https://server-main.tail4c783b.ts.net/forgejo/";
        HTTP_ADDR = "127.0.0.1";
        HTTP_PORT = 3000;
        LANDING_PAGE = "explore";
      };

      service = {
        DISABLE_REGISTRATION = true;
        SHOW_REGISTRATION_BUTTON = false;
        ENABLE_CAPTCHA = false;
      };

      security = {
        INSTALL_LOCK = true;
      };

      ui = {
        DEFAULT_THEME = "forgejo-auto";
        SHOW_USER_EMAIL = false;
      };

      other = {
        SHOW_FOOTER_VERSION = false;
        SHOW_FOOTER_TEMPLATE = false;
      }
    };
  };
}
