{
  services.jitsi-meet = {
    enable = true;
    hostName = "jitsi.gelos.club";
    interfaceConfig = {
      APP_NAME = "Meet do GELOS";
      SHOW_JITSI_WATERMARK = false;
      DISPLAY_WELCOME_FOOTER = false;
    };
    nginx.enable = true;
    # jibri.enable = true;
  };
  # Correção p/ problema relacionado ao prosody não reloadar quando rola um switch
  # https://github.com/NixOS/nixpkgs/issues/117212
  systemd.services.prosody.reloadIfChanged = true;

  networking.firewall = {
    allowedUDPPorts = [ 10000 ];
    allowedTCPPorts = [ 4443 5222 ];
  };
}
