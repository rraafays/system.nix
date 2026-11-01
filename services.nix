{
  services = {
    openssh = {
      enable = true;
      settings.AcceptEnv = [
        "LANG"
        "LC_*"
        "LC_ALL"
        "LANGUAGE"
        "XMODIFIERS"
      ];
    };
    libinput.enable = true;
    printing.enable = true;
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
