{ config, pkgs, options, ... }:

{
  imports = [
    ./docker.nix
  ];

  environment.systemPackages = with pkgs; [
    vscode
    postman
    jetbrains.datagrip
    # jetbrains.webstorm
    # jetbrains.idea-ultimate
    # jetbrains.ruby-mine

    # ruby_3_0
    # sqlite
    # bundler
    # zlib
  ];

}
