{ config, pkgs, ... }:

{
  # https://github.com/msteen/nixos-vscode-server
  imports = [
    (fetchTarball "https://github.com/msteen/nixos-vscode-server/tarball/master")
  ];

  services.vscode-server.enable = true;

  environment.systemPackages = [ pkgs.rnix-lsp ];

}
