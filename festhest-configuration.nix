{
  network.description = "festhest";

  festhest =
    { config, pkgs, ... }: let
      festhest = import ./festhest/default.nix { inherit pkgs; };
    in
    { networking.hostName = "festhest";

      networking.firewall.allowedTCPPorts = [ 22 80 ];
      environment.systemPackages = [ festhest ];

      systemd.services.festhest =
        { description = "festhest webserver";
          wantedBy = [ "multi-user.target" ];
          after = [ "network.target" ];
          serviceConfig = { ExecStart = "${festhest}/bin/festhest"; };
        };
    };
}
