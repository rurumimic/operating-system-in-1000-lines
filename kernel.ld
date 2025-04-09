ENTRY(boot) /* entry point */

SECTIONS {
  . = 0x80200000; /* base address */

  .text :{ /* code section */
    KEEP(*(.text.boot)); /* the first section */
    *(.text .text.*);
  }

  .rodata : ALIGN(4) { /* read-only data section */
    *(.rodata .rodata.*);
  }

  .data : ALIGN(4) { /* read-write data section */
    *(.data .data.*);
  }

  .bss : ALIGN(4) { /* read-write data section with an initial value of 0 */
    __bss = .; /* save current address. extern char __bss[]; */
    *(.bss .bss.* .sbss .sbss.*);
    __bss_end = .;
  }

  . = ALIGN(4);
  . += 128 * 1024; /* 128 KiB stack */
  __stack_top = .;

}
