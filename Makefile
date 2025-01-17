.DEFAULT_GOAL=all

ISO_URL?=https://serverop.de/crux/crux-3.5/iso/crux-3.5.iso
ISO_FILENAME?=crux-3.5.iso
CRUX_VERSION?=3.5

# aarch64)
#   ISO_URL="http://resources.crux-arm.nu/releases/${VERSION}/crux-arm-rootfs-${VERSION}-aarch64.tar.xz"
#   ISO_FILENAME="crux-arm-rootfs-${VERSION}-aarch64.tar.xz"

x86_64.build:
	ISO_FILENAME=$(ISO_FILENAME) ISO_URL=$(ISO_URL) ./release build $(CRUX_VERSION)

x86_64.commit: x86_64.build
	./release commit $(CRUX_VERSION)

x86_64.test: x86_64.commit
	./release test $(CRUX_VERSION)

x86_64.push: x86_64.test
	./release push $(CRUX_VERSION)

x86_64: x86_64.test

all: x86_64
