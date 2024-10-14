# dotfiles

## packages

hyprland

grim?
dunst?
dolphin?
wofi?

sddm
paru
zen-browser
obsidian
zapzap
telegram
alacritty
responsively

zip | unzip
npm | bun

bluemail

brightnessctl
pulseaudio
onedrive

pamixer
docker
pavucontrol

## Fonts

- Cascadia Code from https://github.com/microsoft/cascadia-code/releases

## Instalation

1. iwctl
2. station wlan0 connect "SSID"
3. PASSWORD
4. quit
5. cfdisk /dev/nvme0n1
6. new 600M EFI
7. new 100G
8. write
9. mkfs.fat -F32 /dev/nvme0n1p4
10. mkfs.ext4 /dev/nvme0n1p5
11. mount /dev/nvme0n1p5 /mnt
12. mkdir /mnt/boot
13. mount /dev/nvme0n1p4 /mnt/boot
14. archinstall

## Secure Boot

1. sudo pacman -S sbctl
2. sbctl status
3. sbctl create-keys
4. sbctl enroll-keys -m
5. sbctl status

6. sbctl verify
7. sbctl sign -s /boot/vmlinuz-linux
8. sbctl sign -s /boot/EFI/BOOT/BOOTX64.EFI
9. sbctl status
