# Wireguard socks proxy


- Pass it a wireguard config, set the desired localhost port, run and enjoy a socks5 proxy through wireguard tunnel
- Can run multiple instances on multiple ports through multiple wireguard tunnels. Check [example](example/)

- Note that wireguard configs MUST have `DNS` field. Otherwise this did not work and I am yet to spend more time investigating


## Running

1. Copy over [example/](example/) folder
2. Populate `configs/` with wireguard client configs
3. Update [docker-compose.yml](example/docker-compose.yml):
  - add a service per each wg config
  - set unique name
  - set unique host port
  - set correct conf to mount
4. `docker-compose up -d`
5. verify: `curl --socks5-hostname 127.0.0.1:1081 https://ifconfig.co`