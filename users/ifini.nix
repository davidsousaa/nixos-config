{ config, pkgs, ... }:

{
    users.users.ifini = {
        isNormalUser = true;
        description = "ifini";
        extraGroups = [ "networkmanager" "wheel" "nixos" "libvirtd" "docker" "audio" ];
        packages = with pkgs; [];
    };
}
