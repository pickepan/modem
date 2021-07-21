# modem

## WPA2 personnal

## WPA2 enterprise
Follow [this}(https://www.bordergate.co.uk/wpa2-enteprise-access-point-with-linux/) instructions. <br>
At the present time does not work with dnsmasq but with dhcpd:
- `sudo ifconfig wlan1 down`
- `sudo ifconfig wlan1 192.168.0.1 netmask 255.255.255.0 up`
- `sudo dhcpd -cf dhcpd.conf`
Replace :
- `openssl dhparam -out dh 2048 || exit 1` to `openssl dhparam -out dh 4096 || exit 1`
- `/etc/raddb/certs/` to `/etc/freeradius/3.0/certs/`