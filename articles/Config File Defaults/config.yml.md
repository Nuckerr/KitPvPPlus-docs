```yaml 
# ___  __    ___  _________        ________  ___      ___ ________        ________  ___       ___  ___  ________
#|\  \|\  \ |\  \|\___   ___\     |\   __  \|\  \    /  /|\   __  \      |\   __  \|\  \     |\  \|\  \|\   ____\
#\ \  \/  /|\ \  \|___ \  \_|     \ \  \|\  \ \  \  /  / | \  \|\  \     \ \  \|\  \ \  \    \ \  \\\  \ \  \___|_
# \ \   ___  \ \  \   \ \  \       \ \   ____\ \  \/  / / \ \   ____\     \ \   ____\ \  \    \ \  \\\  \ \_____  \
#  \ \  \\ \  \ \  \   \ \  \       \ \  \___|\ \    / /   \ \  \___|      \ \  \___|\ \  \____\ \  \\\  \|____|\  \
#   \ \__\\ \__\ \__\   \ \__\       \ \__\    \ \__/ /     \ \__\          \ \__\    \ \_______\ \_______\____\_\  \
#    \|__| \|__|\|__|    \|__|        \|__|     \|__|/       \|__|           \|__|     \|_______|\|_______|\_________\
#                                                                                                         \|_________|
# KitPvP Plus
# Download here: http://nckr.link/kpp
# config.yml

update:
  alert: true
  # Coming soon
  auto-download: false
  # In minutes
  re-check-alert: 10
  # If update alerts are enabled, should it check for beta updates
  notify-beta: false

data-storage:
  # mysql, mongo, flat
  type: flat
  # Only needed for mysql and mongo
  host: localhost
  port: 3306
  # Only needed for MySQL
  database: "KitPVP"
  authentication:
    # Must be enabled for mysql. Leave password in blank quotes for empty password
    enabled: true
    username: root
    password: ""

enable-signs: true
enable-guis: true

exp:
  kills: 25
  deaths: 5

death-sound: "ENTITY_ENDERMAN_DEATH"
arrow-hit-sound: "BLOCK_NOTE_BLOCK_PLING"

filler-item: "STAINED_GLASS_PANE"
abilities:
  tnt-shooter:
    displayname: "&cTNT Shooter"
    material: "TNT"
    amount: 10
    lore:
      - "&7Shoot opponents with primed tnt"
      - "&7Just right click"
  fireball:
    displayname: "&6Fireball"
    material: "FIREBALL"
    amount: 10
    lore:
      - "&7Shoot it and fireballs appear!"
      - "&7Just right click"
  sonic:
    displayname: "&9SONIC!!!"
    material: "LAPIS_BLOCK"
    amount: 1
    lore:
      - "&9I AM SPEEEEEEEEEED!!!"
      - "&7Right click to give speed!"
  fireman:
    displayname: "&aFireman"
    material: "BUCKET"
    amount: 1
    lore:
      - "&7If your on fire, put your self out by right clicking this"
      - "&7Right click to give speed!"

# When soup is used, should the empty bowl be removed from the inventory
remove-empty-soup: true

kill-commands:
  - "tell %player% You died to %killer%"
  - "tell %killer% You killed %player%"

scoreboard:
  enabled: true
  disabled-worlds:
    - world_the_end
  spawn:
    title: "&c&lSpawn"
    board:
      - "&7%bar%"
      - "&7Hello there %player%"
      - ""
      - "&7Kills: &b%kills%"
      - "&7Deaths: &b%deaths%"
      - ""
      - "play.example.com"
      - "&7%bar%"
  arena:
    title: "&c&lArena"
    board:
      - "&7%bar%"
      - "&7Hello there %player%"
      - ""
      - "&7Kills: &b%kills%"
      - "&7Deaths: &b%deaths%"
      - ""
      - "play.example.com"
      - "&7%bar%"
```