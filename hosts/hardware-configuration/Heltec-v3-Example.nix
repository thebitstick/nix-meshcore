{
  lib,
  config,
  region,
  ...
}:

{
  radio.rx_gain = true;

  system = {
    name = "Town Observer";
    latitude = 0.000;
    longitude = 0.000;

    private_key = "";
    role = "repeater";

    tx_delay_direct = 0.3;

    interference_threshhold = 1.0;
    agc.reset_interval = 28;
  };
}
