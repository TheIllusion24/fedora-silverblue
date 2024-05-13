# Custom Fedora Silverblue image.
[![build](https://github.com/theillusion24/fedora-silverblue/actions/workflows/fedora-silverblue.yml/badge.svg)](https://github.com/theillusion24/fedora-silverblue/actions/workflows/fedora-silverblue.yml)

This is a customized image of Fedora Silverblue with the following changes:

Overlayed rpm packages:
- firewall-config (control firewalld via gui)
- gvfs-nfs (mount nfs on gnome-nautilus)
- htop (better system monitor in tui)
- igt-gpu-tools (monitor intel gpu)
- lm_sensors (monitor system temperature)
- openssl (for gsconnect)
- setools (Analyze SEPolicy)
- setroubleshoot (SELinux log denial)
- usbguard (protect against rogue USB devices)
- usbguard-dbus (usbguard gnome integration)
- wl-clipboard (universal clipboard for wayland)

Various Tweaks:
- Hardened and performance sysctl values
- Disable passwordless sudo for `rpm-ostree install`
- MAC Randomization for Ethernet
- Reduce sudo password for 1 minute
- Default visudo editor to rvim
- Brute force protection
- Blacklisting unused kernel modules
- Hardening kernel parameters
- Disable coredumps
- Added aliases and vim mode for bash
- Zram comp_algo to zstd
- Limit journald log to 1000M
- NTS on chronyd

## How to use
You can rebase an existing Fedora Silverblue installation with the following steps:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/theillusion24/fedora-silverblue:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/theillusion24/fedora-silverblue:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

## Notes
  - This image is customized for personal use.

## License
See [LICENSE](LICENSE)
  
