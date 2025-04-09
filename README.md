# Operating System in 1,000 Lines

- docs
  - [qemu](docs/qemu.md)

## Getting Started

### Development Tools

bash, tar, clang, lld, llvm-objcopy, llvm-objdump, llvm-readelf, qemu-system-riscv32

#### Check RISC-V Target

```bash
clang -print-targets | grep riscv32

    riscv32     - 32-bit RISC-V
```

#### Ubuntu

```bash
sudo apt update && sudo apt install -y clang llvm lld qemu-system-riscv32 curl
```

test qemu-system-riscv32:

```bash
qemu-system-riscv32 --version

QEMU emulator version 8.2.2 (Debian 1:8.2.2+ds-0ubuntu1.6)
Copyright (c) 2003-2023 Fabrice Bellard and the QEMU Project developers
```

OpenSBI in [qemu/qemu/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin](https://github.com/qemu/qemu/blob/master/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin):

```bash
curl -LO https://github.com/qemu/qemu/raw/v8.0.4/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin
```

#### Arch Linux

- extra/[qemu-system-riscv](https://archlinux.org/packages/extra/x86_64/qemu-system-riscv/)

```bash
sudo pacman -Syu --noconfirm clang llvm lld qemu-system-riscv curl
```

---

## Ref

### Writing an Operating System in 1,000 Lines

- [nuta/operating-system-in-1000-lines](https://github.com/nuta/operating-system-in-1000-lines)
- [docs](https://operating-system-in-1000-lines.vercel.app/en/)

```bash
git clone https://github.com/nuta/operating-system-in-1000-lines
cd operating-system-in-1000-lines
```

```bash
├── disk/          - File system contents
│   ├── hello.txt
│   └── meow.txt
├── common.c       - Kernel/user common library: printf, memset, ...
├── common.h       - Kernel/user common library: definitions of structs and constants
├── kernel.c       - Kernel: process management, system calls, device drivers, file system
├── kernel.h       - Kernel: definitions of structs and constants
├── kernel.ld      - Kernel: linker script (memory layout definition)
├── shell.c        - Command-line shell
├── user.c         - User library: functions for system calls
├── user.h         - User library: definitions of structs and constants
├── user.ld        - User: linker script (memory layout definition)
└── run.sh         - Build script
```

#### Boot

```bash
CC=clang OBJCOPY=llvm-objcopy ./run.sh
```

