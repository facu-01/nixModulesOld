{ config, pkgs, options, ... }:

{

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;


  environment.systemPackages = with pkgs; [
    microsoft-edge
    git
    # jetbrains.ruby-mine

    # ruby_3_0
    # sqlite
    # bundler
    # zlib
  ];
}
