#!/bin/bash

# Vérifie que les services DNS et DHCP sont actifs
if systemctl is-active --quiet named && systemctl is-active --quiet isc-dhcp-server; then
    exit 0
else
    exit 1
fi