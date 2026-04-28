#!/bin/sh

# 1. Чистка
killall -9 pipewire wireplumber pipewire-pulse swaybg 2>/dev/null
pkill mako

# 2. Аудио
pipewire >/dev/null 2>&1 &
wireplumber >/dev/null 2>&1 &
pipewire-pulse >/dev/null 2>&1 &

sleep 2

# 3. Службы
mako >/dev/null 2>&1 &
wl-paste --watch cliphist store >/dev/null 2>&1 &

# 4. Мониторы
wlr-randr --output DP-1 --mode 1920x1080@239.998001 >/dev/null 2>&1
wlr-randr --output HDMI-A-1 --mode 1920x1080@74.973000 >/dev/null 2>&1

# 5. Обои
swaybg -i ~/Downloads/wallhaven-5yd6d5.png -m fill >/dev/null 2>&1 &

# 6. VPN
Throne
