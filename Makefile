
.PHONY: build clean flash monitor

BOARD := esp32c3_devkitm

build:
	west build --board=$(BOARD)

clean:
	rm -rf build

flash:
	west flash

monitor:
	west espressif monitor
