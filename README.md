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

### Debugging

1. If `sudo lte_start` fails because you have not entered a PIN, use mbimcli to enter it.

## Stop LTE

1. Stop LTE with `sudo lte_stop`.

# License

   Copyright 2016 grandcentrix GmbH

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
