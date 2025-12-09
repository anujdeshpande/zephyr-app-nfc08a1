# Hardware Connections

Connect the X-NUCLEO-NFC08A1 module to the ESP32-C3 Supermini as follows:

| X-NUCLEO-NFC08A1 Module | Arduino Pin | ESP32-C3 Supermini | Function      |
|-------------------------|-------------|--------------------|---------------|
| CN6-5 (VDD)             | 5V          | 5V                 | Power 5V      |
| CN6-4 (VDD_IO)          | 3V3         | 3V3                | Power 3.3V    |
| CN6-6/CN6-7             | GND         | GND                | Ground        |
| CN5-5 (MISO_MCU)        | D12         | GPIO 5             | SPI MISO      |
| CN5-4 (MOSI_MCU)        | D11         | GPIO 6             | SPI MOSI      |
| CN5-6 (SCLK_MCU)        | D13         | GPIO 4             | SPI CLK       |
| CN5-3 (/SS_MCU)         | D10         | GPIO 7             | SPI CS        |
| CN8-1 (IRQ_MCU)         | A0          | GPIO 3             | NFC Interrupt |

# Setup

```bash
west init -m git@github.com:anujdeshpande/zephyr-app-nfc08a1.git --mr main
west update
west packages pip --install
west sdk install -t riscv64-zephyr-elf
west blobs fetch hal_espressif
make build flash monitor
make clean
```

# References

- Forked from https://github.com/ptournoux/zephyr-app-nfc08a1
