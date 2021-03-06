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
# messages.yml

general:
  prefix: "&e[&bKitPvP Plus&e] "
  exp-given: '&eYou have received %amount% exp'
  stats-message:
    - "&b%bar%"
    - "&7Deaths: %deaths%"
    - "&7Kills: %kills%"
    - "&7Exp: %exp%"
    - "&7Level: %level%"
    - "&7Killstreak: %killstreak%"
    - "&7KDR: %kdr%"
    - "&b%bar%"
  spawn-message: '&eYou have been sent to spawn!'
  arena-message: '&aYou are now in the arena'
  permission-message: '&cYou dont have permission to run this command'
  console-command: '&cConsole cannot run this command'
  no-last-page: "&cNo last page"
  no-next-page: "&cNo next page"
events:
  death: "&cYou died to %killer%"
  killed: "&aYou just killed %victim%"
  broadcast-death: "&a&l%killer% just killed %victim%"
  arrow-hit: "&aYou hit %victim%"
health-display:
  enabled: true
  # Everything after the number
  message: "&f%health%  &c%heart%"
admin:
  spawn-set: '&aSpawn has been set'
  arena-set: '&aArena has been set'
  plugin-reloaded: '&aPlugin has been reloaded'
economy:
  balance-message: '&eYour balance is %balance%'
  other-balance-message: "&e%target%'s balance is %balance%"
  balance-set: '&aYou have set %target%''s balance to %balance%$'
  balance-reset: '&cYou have reset %target%''s balance'
  balance-given: '&aYou have given %givenAmount%$ to %target%'
  pay-message: '&aYou successfully paid %target% %amount%$'
  insufficient-balance: '&cYou dont have enough money for this'
  paid-message: '&aYou where paid %amount%$ by %payer%'
  sent-to-self: '&cYou cant send money to yourself!'
abilities:
  cooldown-message: '&cYour still on cooldown'
  no-longer-on-cooldown: '&a%name% is no longer on cooldown'
  sonic-activation-message: '&9Speed activated for 1 minute'
  fire-man-activation-message: '&6Put you out!'
kits:
  kit-loaded: '&aLoaded kit %kitname%'
  kit-not-owned: '&cYou dont own this kit'
  kit-already-owned: '&cYou already own this kit'
  kit-given: '&aYou where given %kitname% by %player%'
  kit-sent: '&aYou sent %target% %kitname%'
  kit-created: '&aCreated %kitname%'
  kit-deleted: '&cDeleted kit %kitname%'
  kit-edit-displayname: '&aSet kit %kitname%''s displayname to %newname%'
  kit-edit-icon: '&aSet kit %kitname%''s icon to %itemname%'
  kit-edit-contents: '&aSet kit %kitname%''s contents to your inventory'
  kit-edit-permission: '&aSet %kitname%''s permission to %permission%'
  kit-edit-price: '&aSet %kitname%''s price to %price%'
  kit-edit-cooldown: '&aSet %kitname%''s cooldown to %cooldown%'
  kit-on-cooldown: '&cThis kit is on cooldown'
  kit-dosent-exist: '&cThat kit dosent exist'
  kit-already-exists: '&cThat kit already exists'
  kit-menu-opening: "&aOpening menu"
  kit-purchase-canceled: "&cPurchase canceled"
  kit-purchase: "&aYou purchased %kit%"
leaderboards:
  death-leaderboad: "&e&lDeath leaderboard"
  kills-leaderboad: "&e&lKills leaderboard"
  exp-leaderboad: "&e&lExp leaderboard"
  balance-leaderboad: "&e&lBalance leaderboard"
  killstreak-leaderboad: "&e&lKillstreak leaderboard"
  kdr-leaderboad: "&e&lKDR leaderboard"
  level-leaderboad: "&e&lLevel leaderboard"
help-commands:
  kit-command:
    - "&9%bar%"
    - "&8- &b/kit <kitname> [player] &8- &7Loads given kit (to given player if provided)"
    - "&8- &b/kit edit displayname <kitname> <newdisplayname> &8- &7Edits the displayname of given kit"
    - "&8- &b/kit edit icon <kitname> &8- &7Edits the icon of given kit to the item in your hand"
    - "&8- &b/kit contents <kitname> &8- &7Edits the contents of given kit to your inventory"
    - "&9%bar%"
  core-command:
    - "&b%bar%"
    - "&8- &9/kitpvp reload &8- &7Reloads the configs and database"
    - "&8- &9/kitpvp reload config &8- &7Reloads just the configs"
    - "&8- &9/kitpvp reload database &8- &7Reloads just the database"
    - "&8- &9/kitpvp credits &8- &7Sends the credits"
    - "&b%bar%"
  eco-help:
    - "&d%bar%"
    - "&8- &d/eco give [player] [amount] &8- &7Gives the player x amount of money"
    - "&8- &d/eco set [player] [amount] &8- &7Sets the player's balance to x"
    - "&8- &d/eco reset [player] [amount] &8- &7Sets the player's balance to 0"
    - "&d%bar%"
  kit-admin:
    - "&c%bar%"
    - "&c/kit edit displayname [name] &8- &7Edit the displayname of the kit"
    - "&c/kit edit icon &8- &7Sets the icon of the kit to the item in your hand"
    - "&c/kit edit contents &8- &7Sets the contents of the kit to your inventory"
    - "&c/kit edit permission [permission &8- &7Sets the permission of the kit"
    - "&c/kit edit price [price] &8- &7Sets the price of the kit (set to 0 to be free)"
    - "&c/kit edit cooldown [cooldown[ &8- &7Sets the cooldown time of the kit (set to 0 for none)"
    - "&c%bar%"
  stats-admin:
    - "&9%bar%"
    - "&b/kitpvp set exp [player] [exp] &8- &7Edit the exp of a player"
    - "&b/kitpvp set kills [player] [kills] &8- &7Edit the kills of a player"
    - "&b/kitpvp set deaths [player] [deaths] &8- &7Edit the deaths of a player"
    - "&b/kitpvp clear deaths [player] &8- &7Clears the deaths of a player"
    - "&b/kitpvp clear kills [player] &8- &7Clears the kills of a player"
    - "&b/kitpvp clear exp [player] &8- &7Clears the exp of a player"
    - "&b/kitpvp clear [player] &8- &7Clears all the stats of a player"
    - "&9%bar%"
sign-contents:
  sign-set: "&aSign was set to %sign_type%"
  sign-deleted: "&cSign was deleted"
  arena-sign:
    - "&a[Right click]"
    - "&0To join the arena!"
  spawn-sign:
    - "&a[Right click]"
    - "&0To go to spawn"
  kit-gui-sign:
    - "&a[Right click]"
    - "&0To open the kit GUI"
```