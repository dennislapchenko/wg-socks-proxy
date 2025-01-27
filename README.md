# Wireguard socks proxy


- Pass it a wireguard config, set the desired localhost port, run and enjoy a socks5 proxy through wireguard tunnel
- Can run multiple instances on multiple ports through multiple wireguard tunnels. Check [example](example/)

- Note that wireguard configs MUST have `DNS` field. Otherwise this did not work and I am yet to spend more time investigating