{ config, pkgs, ... }:

{
  hardware.bluetooth.enable = true;
  services.xserver.libinput.enable = true;
  services.xserver.libinput.touchpad = {
    additionalOptions = ''
      Option "ScrollPixelDistance" "5"
    '';
  };
}
