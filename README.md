## securechecks

This repo contains scripts to ensure that a server/computer is properly locked-down. 

Scripts that have been fully audited (i.e. completely trusted by me)
- `cloudflare.sh` uses [UFW](launchpad.net/ufw) and only allows [Cloudflare's IPs](www.cloudflare.com/ips/)
- `nginx.sh` checks the nginx conf(s) for common vulns using [gixy](https://github.com/yandex/gixy)
- `clamav.sh` scans for malware using [clamav](https://www.clamav.net/documents/scanning#daemon)

Scripts that should not run on sensitive machines (I haven't audited these for trojan horses):
- `lynis.sh`

In no way should the checks contained in this repo be considered comprehensive or a substitute for good opsec. Use at your own risk.

