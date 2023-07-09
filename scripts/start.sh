#!/usr/bin/env bash
conf=/config/mopidy.conf
fifo=/var/local/snap/snapfifo

rm -f "${fifo}"
mkfifo "${fifo}"

/usr/bin/mopidy --config "${conf}" local scan
/usr/bin/mopidy --config "${conf}"
