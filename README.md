# CRUX

[![Build Status](https://cloud.drone.io/api/badges/cruxlinux/docker-crux/status.svg)](https://cloud.drone.io/cruxlinux/docker-crux)

A Docker Images for the `CRUX <http://crux.nu>`_ Linux Distribution.

## Building

`Makefile` is parametrized and it optionally accepts CRUX `.iso` image address
to build the docker image from.

By default it points to the latest CRUX release, so running `make x86_64`
should be enough. If you want to use your own ISO or mirror you can use

```
make x86_64 ISO_URL=https://example.com/crux.iso ISO_FILENAME=crux.iso CRUX_VERSION=3.5
```

`Makefile` uses distinct variables for `ISO_URL` and `ISO_FILENAME` because the
downloaded file might not actually match the `ISO_URL` and `CRUX_VERSION`
might not actually be included in the filename.

## Releasing

After building the project with `make x86_64` you can use `make x86_64.push`
to push the appropriate branch to the origin repository.

## Continuous integration

Configuration is stored in `.drone.yml`. Upstream repository is configured to
check pull requests also.

## Contributing

Feel free to issue a pull request or open an issue. Every contribution is
welcomed. :)
