x86_64:
	docker build \
		-t crux-build-x86_64 \
		-f build/x86_64/Dockerfile build/x86_64
	docker run \
		-e "URL=http://ftp.spline.inf.fu-berlin.de/pub/crux/crux-3.5/iso/crux-3.5.iso" \
		-it crux-build-x86_64