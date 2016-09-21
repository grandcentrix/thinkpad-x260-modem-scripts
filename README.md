# Thinkpad x260 modem scripts

## Prerequisites

The modem in the Thinkpad x260 needs at least Linux 4.7 (for a [firmware bug workaround](https://github.com/torvalds/linux/commit/c086e7096170390594c425114d98172bc9aceb8a.patch)) and works with umbim and libmbim-utils 1.14+.

## Installation

1. Install dependencies with `apt-get install lua5.1 libjson-c-dev resolvconf libmbim-utils/sid`.
2. Build umbim: `./build-umbim`.

Install tarball:

3. Create tarball: `tar -cvz etc usr >thinkpad-x260-modem-scripts.tar.gz`
4. Install tarball: `sudo tar -oxzf thinkpad-x260-modem-scripts.tar.gz -C /`

Install package:

3. Create package: `equivs-build thinkpad-x260-modem-scripts.ctl`
4. Install package: `dpkg -i thinkpad-x260-modem-scripts_1.0_all.deb`.

## Start LTE

1. Put SIM card into Thinkpad SIM card slot.
2. Change APN in `/etc/mbim-network.conf`.
3. Start LTE with `sudo lte_start`.

## Stop LTE

1. Stop LTE with `sudo lte_stop`.
