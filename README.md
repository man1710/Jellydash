# Jellydash

FastAPI + Docker dashboard for Jellyfin server stats, mergerfs pool, and locked 1–9 drive bays.

## Features
- CPU usage/temp/watts (RAPL)
- Jellyfin stream stats
- Network traffic on a chosen iface (e.g. wg0-mullvad)
- mergerfs pool usage + branch membership ("SWIMMING"/"STANDING")
- Locked bays 1–9 with SMART + temp + usage

## Install
```bash
git clone <https://github.com/man1710/Jellydash.git>
cd jellydash
cp .env.example .env
# edit .env with your values
docker compose up -d --build
