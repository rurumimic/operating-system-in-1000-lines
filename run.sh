#!/bin/bash

set -xue
# x: enable debugging
# u: exit immediately if a command exits with a non-zero status
# e: exit immediately if a command is not found

QEMU=qemu-system-riscv32

$QEMU -machine virt \
      -bios default \
      -nographic \
      -serial mon:stdio \
      --no-reboot
# -bios default: use opensbi
# -serial mon:stdio: redirect serial output to the terminal

