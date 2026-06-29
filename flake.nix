{
  description = ''
    MeshCore Configurations for
      Heltec v3 running MeshCore MQTT Observer firmware and
      Seeed Studio SenseCAP Solar Node P1-Pro running stock MeshCore firmware
  '';

  inputs = {
    nix-meshcore.url = "github:thebitstick/nix-meshcore";

    meshcore.url = "github:meshcore-dev/MeshCore";
    mqtt-firmware.url = "github:agessaman/MeshCore/mqtt-bridge-implementation-flex";
  };

  outputs =
    inputs@{
      self,
      nix-meshcore,
      meshcore,
      mqtt-firmware,
      ...
    }:
    {
      nodeConfigurations = {
        "Town Observer" = nix-meshcore.lib.node {
          system = "Heltec_v3";
          specialArgs = { inherit inputs; };
          modules = [
            ./configuration.nix
            ./hosts/hardware-configuration/Heltec-v3-Example.nix
            ./hosts/specialization/MQTT.nix
          ];
        };
        "Town Solar" = nix-meshcore.lib.node {
          system = "SenseCap_Solar";
          specialArgs = { inherit inputs; };
          modules = [
            ./configuration.nix
            ./hosts/hardware-configuration/SenseCap_Solar.nix
            ./hosts/specialization/Room.nix
          ];
        };
      };
    };
}
