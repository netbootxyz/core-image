# netboot.xyz core image

Work in progress

Building the linuxkit image:

```
cd /image
./linuxkit8+ build -format kernel+initrd -name core -dir out core.yml
```

iPXE loading example:

```
#!ipxe
imgfree
kernel https://github.com/netbootxyz/core-image/releases/download/latest/core-kernel os_name=ubuntu os_version=22.04 initrd=core-initrd.img console=tty0 console=ttyS0 console=ttyAMA0 playbook=startup
initrd https://github.com/netbootxyz/core-image/releases/download/latest/core-initrd.img
boot
```

