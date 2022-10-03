{ config, pkgs, options, ... }:

{
  imports = [
    ./docker.nix
  ];

  environment.systemPackages = with pkgs; [

    rnix-lsp # language support for nix
    vscode

    jetbrains.datagrip
    jetbrains.webstorm
    jetbrains.idea-ultimate

    ghc
    stack
    haskell-language-server

    exercism

    maven
    jdk

    # jetbrains.ruby-mine

    # ruby_3_0
    # sqlite
    # bundler
    # zlib
  ];

}
