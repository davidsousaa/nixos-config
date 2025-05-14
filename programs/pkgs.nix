{ config, pkgs, ...}:
let
    unstable = import <nixos-unstable> {};
in {
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        neovim
	xclip
        wget
        openvpn
        p7zip
        bat
        brave
        spotify
        vesktop
        alsa-utils
        findutils
        terminator
        vscode
        polkit
        polkit_gnome
        python311
        python311Packages.pip
        python311Packages.dbus-python
        flameshot
        lshw
        git
        tldr
        vlc
        pulseaudio
        cachix
        libreoffice
        brightnessctl
        obsidian
        qemu
        maven
        sumo
        nix-index
        openjdk
        polybar
        font-awesome
        rofi
        bluez
        gpick
        alacritty
        xfce.thunar
        okular
        gnome-calculator
        zoxide
        feh
	pamixer
	pavucontrol
	iperf
	slack
	net-snmp
	libreoffice
	gnumake
        gccgo14
	keyd
	tree
	upower
	ncdu
	protonvpn-gui


	(vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
            bbenoist.nix
            ms-python.python
        ];
        })

        (symlinkJoin {
        name = "discord";
        paths = [ vesktop ];
        postBuild = ''
            ln -s $out/bin/vesktop $out/bin/discord
        '';
        })

        (symlinkJoin {
        name = "calculator";
        paths = [ gnome-calculator ];
        postBuild = ''
            ln -s $out/bin/gnome-calculator $out/bin/calculator
        '';
        })
    ];
}
