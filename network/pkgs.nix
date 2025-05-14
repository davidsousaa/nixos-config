{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [

        # Bin
        ghidra-bin
        gdb
        python3Packages.binwalk

        # Network
        netcat-gnu
        iputils
        putty
        whois
        
        # Port Scanners
        nmap
        ipscan
        rustscan

        # Proxy
        burpsuite
        zap

        # Traffic
        tcpdump
        wireshark
        wireshark-cli

        # Wireless
        aircrack-ng
        netscanner

        # Misc
        libressl
    ];
}
