## i3conf
My i3 config, scripts (mostly copied from net) for i3blocks and i3blocks config


## Dependencies

### Fonts
* `otf-font-awesome` for icons
* `otf-fira-sans` for interface
* `otf-fira-mono` for terminal

### Terminal
* `alacritty` -- Terminal -- `Win+Enter`
  * [~/.Xresources](https://gist.github.com/meow-sokovykh/19dfb0dcb03ba9ab6324037a84f887d4)
  * Font might be broken, so, play with values a bit: `~/.config/alacritty/alacritty.yml` -> `font: { size: 9 }`

* `ranger` -- CLI filebrowser -- `Win+D; F`
* `scrot` -- CLI tool for screenshots. Triggers on `PrtSc`, requires `~/Pictures/screenshots` folder
* `brightnessctl` -- CLI tool for setting hardware brightness

### Other
* `i3lock` -- screensaver -- `Win+L`

### Bar

#### Weather

See `scripts/weather.sh`

* `wget`
* Note: sends requiest to http://openweathermap.org
* Consider using another openweathermap.org API key
* Consider edititg CITY_ID

#### Battery

See `scripts/battery.py`

* `python`
* `acpi`

#### Wi-Fi

See `scripts/wifi.sh`

* `iproute2`
* `wireless_tools` (for `iwgetid`) -- only if you want ESSID name from this script

#### Network name

See `scripts/iface_name.sh`

Use `Win+N` to refresh

#### Local IP

See `scripts/iface.sh`

Use `Win+N` to refresh

* `iproute2`

#### External IP

See `scripts/extip.sh`

Use `Win+N` to refresh

* `wget`
* Note: sends requiest to http://ipinfo.io

#### CPU

See `scripts/cpu.pl`

* `perl`
* `sysstat`

#### Temperature

See `scripts/temp.pl`

* `perl`
* `lm_sensors`

#### Memory

See `scripts/memory.sh`

#### Volume

See `scripts/volume.sh`

* `pulseaudio`
* `pavucontrol`
* `pulseaudio-alsa`
* `alsa-utils`

### Applications
* `firefox-developer-edition` -- browser -- `Win+D; Enter`
* `enpass` -- password manager -- `Win+Tab; P`

#### Text
* `leafpad` -- GUI editor -- `Win+Tab; E` (for editing i3config: `Win+D; C`)
* `code-oss` -- for editing more complex stuff -- `Win+Tab; Enter`

#### Social
* `telegram-desktop` -- messenger -- `Win+D; T`
* `thunderbird` -- mail client -- `Win+D; M`
* `discord` -- messenger -- `Win+D; D`

#### Editors
* `pinta` -- for simple stuff -- `Win+D; P`
* `gimp` -- for complex stuff -- `Win+D; G`

#### Office
* `evince` -- pdf etc. viewer -- no shortcut
* `libreoffice-fresh` -- office package -- `Win+D; O`
* `notion-snap-reborn`(via `snapd`) -- notebook -- `Win+Tab; N`
* `todoist` (via `snapd`) -- task-manager -- `Win+Tab; T`

#### Other
* `transmission-gtk` -- torrent client -- `Win+G; T`
* `steam` + `steam-native-runtime` -- game store -- `Win+G; Enter`
* `cloudflare-warp-bin` -- `Win+P` for ON, `Win+Shift+P` for off
