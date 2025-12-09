# Setup

```
 west init -m git@github.com:anujdeshpande/zephyr-app-nfc08a1.git --mr main
 west update
 west packages pip --install
 west sdk install -t riscv64-zephyr-elf
 west blobs fetch hal_espressif
 make
 make flash monitor
```

# References

- Forked from https://github.com/ptournoux/zephyr-app-nfc08a1
