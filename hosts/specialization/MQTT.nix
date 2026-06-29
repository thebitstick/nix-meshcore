{
  config,
  mqtt,
  ...
}:

{
  system = {
    timezone = "America/Chicago";
  };
  mqtt = {
    iata = "ORD";
    mqtt1.preset = "analyzer-us";
    mqtt2.preset = "chimesh";
    rx = true;
    tx = "advert";
    owner = "your-primary-companion-device-pub-key";
  };

  wifi = {
    ssid = "your-wifi-network";
    password = "your-wifi-password";
  };

  bridge.enabled = true;
}
