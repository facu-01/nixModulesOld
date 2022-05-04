{ config, pkgs, ... }:


{

  environment.systemPackages = with pkgs; [
    libsForQt5.yakuake
    libsForQt5.ark
  ];

  programs.kdeconnect.enable = true;

  # Config
  services.xserver.enable = true;
  # services.xserver.displayManager.sddm.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.layout = "latam";
  # services.xserver.videoDrivers = [ "modesetting" ];
  # videoDrivers = mkForce [ "modesetting" ]; 
}
