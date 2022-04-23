{ config, pkgs, ... }:

{
  imports = [
    ./vsCode.nix
    ./home.nix
    #./flakes.nix
  ];

}
