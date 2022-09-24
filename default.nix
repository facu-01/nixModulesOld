{ config, pkgs, ... }:

{
  imports = [
    #./vsCode.nix
    ./programs/dev.nix
    ./nixosOptions/virtualBox.nix
    #./hardware/laptop.nix
    #./flakes.nix
  ];

}
