#!/bin/bash

echo "# interface wlan du Wi-Fi
interface=$1

# nl80211 avec tous les drivers Linux mac80211 
driver=nl80211

# Nom du spot Wi-Fi
ssid=Nexus

# mode Wi-Fi (a = IEEE 802.11a, b = IEEE 802.11b, g = IEEE 802.11g)
hw_mode=g

# canal de fréquence Wi-Fi (1-14)
channel=6



#auth
auth_algs=1

wpa=2
wpa_passphrase=passphrase
wpa_key_mgmt=WPA-PSK
wpa_pairwise=CCMP
rsn_pairwise=CCMP


#macaddr_acl=1
#accept_mac_file=hostapd.accept


#client isolation
ap_isolate=1


#maximum number of stations
max_num_sta=5



# Beacon interval in kus (1.024 ms)
beacon_int=100

# DTIM (delivery trafic information message) 
dtim_period=2

# Maximum number of stations allowed in station table
max_num_sta=255

# RTS/CTS threshold; 2347 = disabled (default)
rts_threshold=2347

# Fragmentation threshold; 2346 = disabled (default)
fragm_threshold=2346" > hostapd.conf

echo "bogus-priv
filterwin2k
# no-resolv
interface=$1
no-dhcp-interface=$1" > dnsmasq.conf