#!/bin/sh
set -e

trap "wg-quick down /etc/wireguard/wg0.conf" EXIT
wg-quick up /etc/wireguard/wg0.conf
exec danted -f /etc/danted.conf