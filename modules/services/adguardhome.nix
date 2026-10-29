{ ... }:

{
  services.adguardhome = {
    enable = true;
    # allowDHCP = true;

    settings = {
      bind_port = 53;
      bind_addr = "0.0.0.0";

      http = {
        address = "0.0.0.0:3001";
      };

      users = [
        {
          name = "mrxsloopy";
          password = "$2b$05$VRHHE.ocOm2j.F6fNbXM4.YNNsCdCTiwVY5P4ZQKCW2Y08/VPOsSC";
        }
      ];

      upstream_dns = [
        "1.1.1.1"
        "8.8.8.8"
        "tls://dns.google"
      ];

      bootstrap_dns = [
        "1.1.1.1"
        "8.8.8.8"
      ];

      filtering = {
        protection_enabled = true;
        filtering_enabled = true;

        filters = [
          {
            enabled = true;
            name = "AdGuard Base";
            url = "https://adguardteam.github.io/HostFiltersRegistryFilters/filter_1.txt";
            id = 1;
          }
          {
            enabled = true;
            name = "AdGuard Tracking";
            url = "https://adguardteam.github.io/HostFiltersRegistryFilters/filter_25.txt";
            id = 2;
          }
          {
            enabled = true;
            name = "Dan Pollock";
            url = "https://someonewhocares.org/hosts/hosts";
            id = 3;
          }
        ];
      };
    };
  };
}
