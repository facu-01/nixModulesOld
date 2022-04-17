{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  home-manager.users.demo = {
    /* Here goes your home-manager config, eg home.packages = [ pkgs.foo ]; */

    programs.git = {
      enable = true;
      userName = "Facundo Lucero";
      userEmail = "facundon.lucero@alumnos.frm.utn.edu.ar";
    };

    programs.zsh = {
      enable = true;
      shellAliases = {
        update = "sudo nixos-rebuild switch";
      };
      oh-my-zsh = {
        enable = true;
        plugins = [ "git" ];
        theme = "robbyrussell";
      };
    };

  };
}
