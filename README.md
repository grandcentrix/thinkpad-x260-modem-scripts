# Thinkpad x260 modem scripts

## Installation

1. Install dependencies with `apt-get install lua5.1 libjson-c-dev resolvconf`.
2. Build umbim: `./build-umbim`.
3. Create tarball: `tar -cvz etc usr >thinkpad-x260-modem-scripts.tar.gz`
4. Install tarball: `sudo tar -oxzf thinkpad-x260-modem-scripts.tar.gz -C /`
5. Change APN in `/etc/mbim-network.conf`.

## Start LTE

1. Put SIM card into Thinkpad.
2. Start LTE with `sudo lte_start`.

## Stop LTE

1. Stop LTE with `sudo lte_stop`.
