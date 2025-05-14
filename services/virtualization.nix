{ config, pkgs, ...}:

{
    # Virtualization
    virtualisation.libvirtd = {
        enable = true;
        qemu = {
        package = pkgs.qemu_kvm;
        runAsRoot = true;
        swtpm.enable = true;
        ovmf = {
            enable = true;
            packages = [(pkgs.OVMF.override {
            secureBoot = true;
            tpmSupport = true;
            }).fd];
        };
        };
    };
    programs.virt-manager.enable = true;
    users.groups.libvirtd.members = ["ifini"];
    virtualisation.spiceUSBRedirection.enable = true;

    # Docker
    virtualisation.docker.enable = true;
}
