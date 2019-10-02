ISO_URL?=https://serverop.de/crux/crux-3.5/iso/crux-3.5.iso
ISO_FILENAME?=crux-3.5.iso

x86_64:
	docker build \
		-t crux-build-x86_64 \
		-f build/x86_64/Dockerfile build/x86_64
	docker run \
		-e "ISO_URL=$(ISO_URL)" \
		-e "ISO_FILENAME=$(ISO_FILENAME)" \
		-it crux-build-x86_64