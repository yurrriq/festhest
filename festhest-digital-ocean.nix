{
  resources.sshKeyPairs.ssh-key = { };

  festhest = { config, pkgs, ... }: {
    services.nginx.enable = true;
    services.openssh.enable = true;

    deployment.targetEnv = "digitalOcean";
    deployment.digitalOcean = {
      region = "nyc1";
      size = "512mb";
    };
  };
}
