# Custom Fedora Silverblue image.
[![build](https://github.com/theillusion24/fedora-silverblue/actions/workflows/fedora-silverblue.yml/badge.svg)](https://github.com/theillusion24/fedora-silverblue/actions/workflows/fedora-silverblue.yml)

This is a customized image of Fedora Silverblue.

## Usage

- First run this command and reboot, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/theillusion24/fedora-silverblue:latest
  ```
- Then rebase to the signed image:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/theillusion24/fedora-silverblue:latest
  ```
## Notes
  - This image is customized for personal use.

## License
See [LICENSE](LICENSE)
  
