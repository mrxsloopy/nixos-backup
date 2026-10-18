{ config, pkgs, ... }:

{
  power.ups = {
    enable = true;
    mode = "standalone";  # soon "netserver"

    # ─── ups.conf: UPS CyberPower UT850EG ───
    ups."cyberpower" = {
      description = "CyberPower UT850EG";
      driver = "usbhid-ups";
      port = "auto";

      # USB id
      directives = [
        "vendorid = 0764"
        "productid = 0501"
        "offdelay = 60"
        "ondelay = 120"
        "lowbatt = 30"
      ];
    };

    # ─── upsd.conf: on localhost (standalone) ───
    upsd.listen = [
      { address = "127.0.0.1"; port = 3493; }
      { address = "::1";       port = 3493; }
    ];

    # ─── upsd.users: admin upsmon ───
    users."nut-admin" = {
      passwordFile = "/etc/nixos/secrets/ups-passwd.txt";
      upsmon = "primary";
    };

    # ─── upsmon.conf: monitoring ───
    upsmon.monitor."cyberpower" = {
      system = "cyberpower@localhost";
      powerValue = 1;
      user = "nut-admin";
      passwordFile = "/etc/nixos/secrets/ups-passwd.txt";
      type = "primary";
    };

    upsmon.settings = {
      # shutdown server
      MINSUPPLIES = 1;
      POWERDOWNFLAG = "/run/killpower";
      SHUTDOWNCMD = "${config.systemd.package}/bin/shutdown now";

      # waiting time for server
      FINALDELAY = 5;

      # waiting time for RPi5
      HOSTSYNC = 30;

      # Notifications
      NOTIFYFLAG = [
        [ "ONLINE"   "SYSLOG+WALL" ]
        [ "ONBATT"   "SYSLOG+WALL" ]
        [ "LOWBATT"  "SYSLOG+WALL" ]
        [ "FSD"      "SYSLOG+WALL" ]
        [ "SHUTDOWN" "SYSLOG+WALL" ]
        [ "COMMBAD"  "SYSLOG+WALL" ]
        [ "NOCOMM"   "SYSLOG+WALL" ]
      ];

      NOCOMMWARNTIME = 300;
      RBWARNTIME = 21600;
    };
  };
}
