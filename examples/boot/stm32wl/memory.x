MEMORY
{
  /* NOTE 1 K = 1 KiBi = 1024 bytes */
  BOOTLOADER                        : ORIGIN = 0x08000000, LENGTH = 24K
  BOOTLOADER_STATE                  : ORIGIN = 0x08006000, LENGTH = 4K
  FLASH                             : ORIGIN = 0x08008000, LENGTH = 110592
  DFU                               : ORIGIN = 0x08023000, LENGTH = 112640
  RAM                         (rwx) : ORIGIN = 0x20000008, LENGTH = 64K - 8
}

__bootloader_state_start = ORIGIN(BOOTLOADER_STATE);
__bootloader_state_end = ORIGIN(BOOTLOADER_STATE) + LENGTH(BOOTLOADER_STATE);

__bootloader_dfu_start = ORIGIN(DFU);
__bootloader_dfu_end = ORIGIN(DFU) + LENGTH(DFU);
