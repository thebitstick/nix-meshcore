{
  lib,
  config,
  region,
  ...
}:

{
  radio.rx_gain = false;

  system = {
    name = "Town Solar";
    latitude = 0.000;
    longitude = 0.000;

    private_key = "";
    role = "room_server";

    tx_delay_direct = 0.1999999;

    interference_threshhold = 0.0;
    agc.reset_interval = 0;
  };
}
