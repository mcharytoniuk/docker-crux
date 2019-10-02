# CRUX

[![Build Status](https://cloud.drone.io/api/badges/cruxlinux/docker-crux/status.svg)](https://cloud.drone.io/cruxlinux/docker-crux)

A Docker Images for the `CRUX <http://crux.nu>`_ Linux Distribution.

## Building

`Makefile` is parametrized and it optionally accepts CRUX `.iso` image to build
the docker image from.

By default it points to the latest CRUX release, so running `make x86_64` 
should be enough. If you want to use your own ISO or mirror you can use
`make x86_64 ISO_URL=https://example.com/crux.iso ISO_FILENAME=crux.iso`.

Makefile uses separate variables for `ISO_URL` and `ISO_FILENAME` because the
downloaded file might not actually match the `ISO_URL`.

## Continuous integration

Just update `.drone.yml`. Upstream repository is configured to check pull 
requests also.