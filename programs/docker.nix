{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    docker-compose
  ];

  virtualisation.docker.enable = true;
  users.users.facu.extraGroups = [ "docker" ];
}
