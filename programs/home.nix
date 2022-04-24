{ config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    rnix-lsp
    sqlite
    vscode
    spotify
    lm_sensors
  ];

  # Terminal config
  programs.xonsh.enable = true;
  users.defaultUserShell = pkgs.xonsh;
  # programs.zsh.enable = true;
  # users.defaultUserShell = pkgs.zsh;

  imports = [
    (import "${home-manager}/nixos")
    ./plasma.nix
  ];

  # Home manager config
  home-manager.users.facu = {
    /* Here goes your home-manager config, eg home.packages = [ pkgs.foo ]; */
    programs.git = {
      enable = true;
      userName = "Facundo Lucero";
      userEmail = "facundon.lucero@alumnos.frm.utn.edu.ar";
    };

    # programs.zsh = {
    #   enable = true;
    #   enableAutosuggestions = true;
    #   shellAliases = {
    #     update = "sudo nixos-rebuild switch";
    #   };

    #   oh-my-zsh = {
    #     enable = true;
    #     plugins = [ "git" ];
    #     theme = "robbyrussell";
    #   };
    # };
  };
}
