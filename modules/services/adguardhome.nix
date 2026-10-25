{ ... }:

{
  services.adguardhome = {
    enable = true;
    #allowDHCP = true;  # control DHCP

    settings = {
      bind_port = 53;
      bind_addr = "0.0.0.0";

      http = {
        address = "0.0.0.0:3001";
      };

      upstream_dns = [
        "1.1.1.1"
        "8.8.8.8"
        "tls://dns.google"
      ];

      bootstrap_dns = [
        "1.1.1.1"
        "8.8.8.8"
      ];

      filters = [
        {
          name = "AdGuard Base";
          url = "https://adguardteam.github.io/HostFiltersRegistryFilters/filter_1.txt";
          id = 1;
        }
        {
          name = "AdGuard Tracking";
          url = "https://adguardteam.github.io/HostFiltersRegistryFilters/filter_25.txt";
          id = 2;
        }
        {
          name = "Dan Pollock";
          url = "https://someonewhocares.org/hosts/hosts";
          id = 3;
        }
      ];

      filtering = {
        protection_enabled = true;
        filtering_enabled = true;
      };
    };
  };
}
