# Operating System in 1,000 Lines

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

OpenSBI:

```bash
curl -LO https://github.com/qemu/qemu/raw/v8.0.4/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin
```

#### Arch Linux

- extra/[qemu-system-riscv](https://archlinux.org/packages/extra/x86_64/qemu-system-riscv/)

```bash
sudo pacman -Syu --noconfirm clang llvm lld qemu-system-riscv curl
```

## Ref

### Writing an Operating System in 1,000 Lines

- [nuta/operating-system-in-1000-lines](https://github.com/nuta/operating-system-in-1000-lines)
- [docs](https://operating-system-in-1000-lines.vercel.app/en/)

