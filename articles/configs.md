#  Configs

This section of documentation was written by [realdeadbeef](https://github.com/realdeadbeef)

!!! danger
    This article covers the `config.yml` and the `messages.yml`. If you touch any of the other config files, **this is at**
    **your own risk!**. These files contain data and if it is broken, all that data will be lost, rendering major parts of your
    server as broken.

!!! tip
    Before reloading/restarting the plugin, backup your config files so that if anything goes wrong, you still have them. You can
    also use [yaml linter](http://www.yamllint.com/) to see if there are any syntax errors in your config

## `config.yml`

`data-storage`
: This section of the file defines how data is stored.

`type`
: Configures the storage type.

- If you are using a MySQL database, this should be set to `mysql`.
- If You are not using a database this should be set to `flat`.
- If you are using a Mongo database, this should be set to `mongo`.

`host`
: Sets the IP address of the MySQL or Mongo database.  
!!! warning
    This should **NOT** include port number
**Syntax:** `host: your-database-ip`  

`port`
: Sets the port on which the database is listening on.  
!!! tip
    The default port for MySQL is 3306 and the default
    port for MongoDB is 27017
**Syntax:** `port: database-port`

`database`
: Identifies the database in which to store data.  
**Syntax:** `database: "database-name"`    
!!! note
    This value is **only** needed for MySQL.

`authentication`
: Authentication settings.  

`enabled`
: Turns on authentication for the database.  
**Syntax:** `enabled: true|false`  
!!! warning
    Authentication is required for MySQL.

`username`
: Sets the username used for authenticating with the database.  
**Syntax:** `username: database-username`

`password`
: Sets the password used for authenticating with the database.  
**Syntax:** `password: p4ssw0rd`

`enable-signs`
: Enables signs.  
**Syntax:** `enable-signs: true|false`

`enable-guis:`
: Enables the in-game GUI's.  
**Syntax:** `enable-guis: true|false`

`exp`
: In-game experience points settings.  

`kills`
: Defines how many experience points a player should receive per kill.  
**Syntax:** `kills: number-of-experience-points`  
!!! note
    This should be a number with a decimal point. E.g. `kills: 25.0`. Even if it is a whole number, it should still have the `.0` after it.

`filler-item`
: This defines the item that should fill in the gaps in the inventory GUI.  
!!! tip
    Item codes can be found [here](https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/Material.html)

`abilities`: This allows you to customize how the abilities look  
**Syntax:** *(Example)*
```yaml
tnt-shooter: #This is the name of the ability, it does not show up in-game.
  displayname:  "&cTnT Shooter" #This is the name of the item that will give the ability.
  material:  "TNT" #This is the item that will be given to player, item codes can be found here: https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/Material.html
  amount:  10 #How many of the items to give to the player.
  lore: #Pretty text that is added to the item's description/lore box.
     -  "&7Shoot opponents with primed tnt"
     -  "&7Just right click"
```
!!! note
    Minecraft color codes can be used in the lore quote marks in the config above, see end of docs.

`scoreboard`
: This section is where the scoreboard settings are defined.

`enabled`
: This enables and disables the scoreboards.  
**Syntax:** `true|false`

`disabled-worlds`
: This setting defines which worlds should be disabled.  
In Spigot there are normally 3 worlds:

- world (Overworld)
- world_nether (The Nether)
- world_the_end (The End)

You can disable any worlds here.  
**Syntax:** 
```yaml
disabled-worlds:
   - world_the_end
   - world_nether
```
`spawn`
: This section defines the text on the spawn/lobby scoreboard.  

`title`
: This defines the text at the top of the scoreboard (The Title).  
**Syntax:** `title: "title-text"`  

`board`
: This section defines the text on the scoreboard  
**Syntax:**
```yaml
board:
 -  "&7%bar%"#This is a bar/line colored gray with the code '&7'
 -  "&7Hello there %player%"#This says 'Hello there' and then the players username, defined by '%player%' in the color gray, indicated by '&7'.
 -  ""#This is just a blank space created by some empty quote marks - You could put some text in here.
 -  "&7Kills: &b%kills%"#This says 'Kills:' in the color gray, indicated by the color code '&7' followed by the number of kills, indicated by '%kills%' in the color aqua, indicated by '&b'.
 -  "&7Deaths: &b%deaths%"#This says 'Deaths:' in the color gray, indicated by the color code '&7' followed by the number of deaths, indicated by '%deaths%' in the color aqua, indicated by '&b'.
 -  ""#This is just a blank space created by some empty quote marks - You could put some text in here.
 -  "play.example.com"#Some customisable text
 -  "&7%bar%"#This is a bar/line colored gray with the code '&7'
```

`arena`
: This section defines the text on the arena scoreboard.  

`title`
: This defines the text at the top of the scoreboard (The Title).  
**Syntax:** `title: "title-text"`  

`board`
: This section defines the text on the scoreboard  
**Syntax:**
```yaml
board:
 -  "&7%bar%"#This is a bar/line colored gray with the code '&7'
 -  "&7Hello there %player%"#This says 'Hello there' and then the players username, defined by '%player%' in the color gray, indicated by '&7'.
 -  ""#This is just a blank space created by some empty quote marks - You could put some text in here.
 -  "&7Kills: &b%kills%"#This says 'Kills:' in the color gray, indicated by the color code '&7' followed by the number of kills, indicated by '%kills%' in the color aqua, indicated by '&b'.
 -  "&7Deaths: &b%deaths%"#This says 'Deaths:' in the color gray, indicated by the color code '&7' followed by the number of deaths, indicated by '%deaths%' in the color aqua, indicated by '&b'.
 -  ""#This is just a blank space created by some empty quote marks - You could put some text in here.
 -  "play.example.com"#Some customisable text
 -  "&7%bar%"#This is a bar/line colored gray with the code '&7'
```

## `messages.yml`

This section won't be so well documented as there is over 100 different messages and I think it is quite self-explanatory. However, I will document some of the more important things.

|Message|Description|Placeholders|Notes|
|:-----:|:---------:|:----------:|:---:|
|**General**||||
|prefix|A string of text used at the beginning of each message||Leave blank for no prefix|
|exp-given|Sent when a player receives exp|%amount% - The amount of exp||
|stats-message|The /stats message|%deaths%, %kills%, %exp%, %level%, %killstreak%, %kdr%, %top_killstreak%|Self explanatory placeholders. **This is a string list**|
|spawn-message|Message sent when /spawn is run|||
|arena-message|Message sent when /play is run|||
|permission-message|Message sent when a player dosent have permission to do something|||
|console-command|Sent when the command is not available for the console|||
|no-last-page|Sent when there is no previous page on a paginated menu|||
|no-next-page|Sent when there is no next page on a paginated menu|||
|**Events**||||
|death|Sent when a player dies to another player|%killer% - Who killed them||
|killed|Sent when you kill a player|%victim% - The person you killed||
|broadcast-death|Broadcast to the server when someone gets killed|%killer%, %victim%|Leave blank for no broadcast|
|arrow-hit|Sent when a player hits someone with a bow/arrow|%victim% - who they hit||
|**Admin**||||
|spawn-set|Message sent when /setspawn is ran|||
|arena-set|Message sent when /setarena is ran|||
|plugin-reloaded|Sent when you reload the plugin|||
|**Economy**||||
|balance-message|/bal message|%balance% - Player's balance||
|other-balance-message|/balother message|%balance% - the targets balance, %target%||
|balance-set|When admin sets player's balance|%target%, %balance%||
|balance-reset|When admin resets a player's balance|%target%||
|balance-given|When admin gives X amount to player|%target%, %givenAmount%||
|pay-message|When you send a player money successfully|%targe%, %amount%||
|insufficient-balance|When a player dosent have a high enough balance||
|paid-message|When you get paid by another player|%payer% - Who paid you, %amount%||
|sent-to-self|When a player tries to send money to themselves|||
|**Abilities**|||
|cooldown-message|Sent when a player tries to use a ability on cooldown|||
|no-longer-on-cooldown|Sent when a ability comes off cooldown|%name% - ability name||
|sonic-activation-message|Sent when sonic ability is activated|||
|fireman-activation-message|Sent when fireman ability is activated||| 

**Though there is more, the rest is fairly self explanatory**  
!!! note
    The leaderboards part is the displayname of the leaderboard

---

## Placeholders
These are all the placeholders supported by all the messages. Other messages may have specific placeholders. These will be listed in the comment above it

|Placeholder|Description|Notes|
|:---------:|:---------:|:---:|
|%player%|The player's name|Can only be used where a player is applicable|
|%bar%|Will return a line||
|%blank%|Will return blank||
|%left_arrow%|«||
|%right_arrow%|»||
|%cross%|✖||
|%warning%|⚠|
|%heart%|❤||
|||The following placeholders require PlaceHolderAPI|
|%kpvp_deaths%|The death count of the player|Can only be used when player is applicable|
|%kpvp_kills%|The kill count of the player|Can only be used where a player is applicable|
|%kpvp_exp%|The exp of the player|Can only be used where a player is applicable|
|%kpvp_level%|The level of the player|Can only be used where a player is applicable|
|%kpvp_bal%|The balance of the player|Can only be used where a player is applicable|

`prefix`
: This is a bit of text that prefixes every message.  
E.g. `[KitPvP Plus] You don't have permission`

## Minecraft color Codes
Here is an example on how to use color codes:

:white_check_mark: `"&4Red Text"`: This text is red as it uses the '&4' color code.

:white_check_mark: `"&4&nRed Underlined text"`: This text is red and underlined as it uses the '&4' color code to make it red and the '&n' formatting code to underline.

:white_check_mark: `"&cRed &aGreen &9Blue"`: You can color code different words by placing color codes next to them.

:x: `"Red&c Green&a Blue&9"`: This would highlight the text in front of the color code so "Red" wouldn't be colored and "Green" would be highlighted red and so on and so forth.

| color | Code |
|:--:|:--:|
| Dark Red | &4 |
| Red | &c |
| Gold | &6 |
| Yellow | &e |
| Dark Green | &2 |
| Green | &a |
| Dark Aqua | &3 |
| Aqua | &b |
| Dark Blue | &1 |
| Blue | &9 |
| Light Purple | &d |
| Dark Purple | &5 |
| White | &f |
| Gray | &7 |
| Dark Gray | &8 |
| Black | &0 |
| **Bold** | &l |
| *Italics* | &o |
| Underline | &n |
| ~~Strikethrough~~ | &m |

---
Found a problem? This documentation is open source and can be found [here](https://github.com/Nuckerr/KitPvPPlus-docs).