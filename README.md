# Custom Fedora Silverblue image
[![build](https://github.com/theillusion24/fedora-silverblue/actions/workflows/build.yml/badge.svg)](https://github.com/theillusion24/fedora-silverblue/actions/workflows/build.yml)

This is a customized Fedora Silverblue image.

## Usage

- First run this command and reboot, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/theillusion24/fedora-silverblue-custom:latest
  ```
- Then rebase to the signed image:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/theillusion24/fedora-silverblue-custom:latest
  ```
## Notes
  - This image is customized for personal use only.

## License
See [LICENSE](LICENSE)
