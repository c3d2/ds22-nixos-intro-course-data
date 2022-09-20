#!/usr/bin/env bash

qemu-system-x86_64 -enable-kvm -boot d \
  -cdrom latest-nixos-plasma5-x86_64-linux.iso \
  -m 8G -cpu host -smp 2 -hda nixos-test.img
