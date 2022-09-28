{ config, pkgs, ... }:

{
  imports = [
    #./vsCode.nix
    ./programs/dev.nix
    ./programs/general.nix
    ./nixosOptions/virtualBox.nix
    #./hardware/laptop.nix
    #./flakes.nix
  ];

}
