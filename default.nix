{ config, pkgs, ... }:

{
  imports = [
    #./vsCode.nix
    ./programs/home.nix
    ./hardware/laptop.nix
    #./flakes.nix
  ];

}
