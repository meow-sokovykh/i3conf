# i3conf
My i3 config, scripts (mostly copied from net) for i3blocks and i3blocks config


## Dependencies

### Fonts
* `otf-font-awesome` for icons
* `otf-fira-sans` for interface

### Terminal
* `alacritty` -- Terminal -- `Win+Enter`
  * (TODO: links to it's config)  
* `ranger` -- CLI filebrowser -- `Win+D; F`
* `scrot` -- CLI tool for screenshots. Triggers on `PrtSc`, requires `~/Pictures/screenshots` folder

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

#### Local IP

See `scripts/iface.sh`

* `iproute2`

#### External IP

See `scripts/extip.sh`

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

###

### Applications
* `firefox-developer-edition` -- browser -- `Win+D; Enter`
* `enpass` -- password manager -- `Win+Tab; P`

#### Text
* `leafpad` -- GUI editor -- `Win+Tab; E` (for editing i3config: `Win+D; C`)
* `code-oss` -- for editing more complex stuff -- `Win+Tab; Enter`

#### Social
* `telegram-desktop` -- messenger -- `Win+D; T`

#### Editors
* `pinta` -- for simple stuff -- `Win+D; P`
* `gimp` -- for complex stuff -- `Win+D; G`

#### Office
* `evince` -- pdf etc. viewer -- no shortcut
* `libreoffice-fresh` -- office package -- `Win+D; O`

#### Other
* `transmission-gtk` -- torrent client -- `Win+G; T`
* `steam` + `steam-native-runtime` -- game store -- `Win+G; Enter`
