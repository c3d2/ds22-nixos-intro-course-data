#!/usr/bin/env bash

qemu-system-x86_64 -enable-kvm -boot d \
   -m 8G -cpu host -smp 2 -hda nixos-test.img
