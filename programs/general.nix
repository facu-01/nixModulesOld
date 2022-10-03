{ config, pkgs, options, ... }:

{

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    google-chrome
    git
    # jetbrains.ruby-mine

    # ruby_3_0
    # sqlite
    # bundler
    # zlib
  ];
}
