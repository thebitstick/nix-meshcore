{
  lib,
  config,
  region,
  ...
}:

{
  radio = {
    frequency = 910.525;
    bandwidth = 62.5;
    spreading_factor = 7;
    coding_rate = 5;
    transmit_power = 22;
  };

  system = {
    password = "password";
    guest.password = "";
    owner.info = ''
      Bluesky: @bitstick.rip
    '';
    power_saving = false;
    repeat = true;
    path.hash.mode = 2;
    loop.detect = false;

    tx_delay = 0.5;
    rx_delay = 0.0;

    duty_cycle = 0.5; # 50%
    # airtime_factor = 1.0 # deprecated
    multi-acks = false;
    flood = {
      advert.interval = 72;
      max = {
        hops = 64;
        unscoped = 64;
        advert = 8;
      };
    };
    advert.interval = 240;
  };

  region = ''
    *^ F
    us F
    us-il F
    #NorthAmerica
      #USA
        #Illinois

  '';

  gps = false;
}
