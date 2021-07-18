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
    Minecraft colour codes can be used in the lore quote marks in the config above, see end of docs.

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
 -  "&7%bar%"#This is a bar/line coloured gray with the code '&7'
 -  "&7Hello there %player%"#This says 'Hello there' and then the players username, defined by '%player%' in the colour gray, indicated by '&7'.
 -  ""#This is just a blank space created by some empty quote marks - You could put some text in here.
 -  "&7Kills: &b%kills%"#This says 'Kills:' in the colour gray, indicated by the colour code '&7' followed by the number of kills, indicated by '%kills%' in the colour aqua, indicated by '&b'.
 -  "&7Deaths: &b%deaths%"#This says 'Deaths:' in the colour gray, indicated by the colour code '&7' followed by the number of deaths, indicated by '%deaths%' in the colour aqua, indicated by '&b'.
 -  ""#This is just a blank space created by some empty quote marks - You could put some text in here.
 -  "play.example.com"#Some customisable text
 -  "&7%bar%"#This is a bar/line coloured gray with the code '&7'
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
 -  "&7%bar%"#This is a bar/line coloured gray with the code '&7'
 -  "&7Hello there %player%"#This says 'Hello there' and then the players username, defined by '%player%' in the colour gray, indicated by '&7'.
 -  ""#This is just a blank space created by some empty quote marks - You could put some text in here.
 -  "&7Kills: &b%kills%"#This says 'Kills:' in the colour gray, indicated by the colour code '&7' followed by the number of kills, indicated by '%kills%' in the colour aqua, indicated by '&b'.
 -  "&7Deaths: &b%deaths%"#This says 'Deaths:' in the colour gray, indicated by the colour code '&7' followed by the number of deaths, indicated by '%deaths%' in the colour aqua, indicated by '&b'.
 -  ""#This is just a blank space created by some empty quote marks - You could put some text in here.
 -  "play.example.com"#Some customisable text
 -  "&7%bar%"#This is a bar/line coloured gray with the code '&7'
```

## `messages.yml`

This section won't be so well documented as there is over 100 different messages and I think it is quite self-explanatory. However, I will document some of the more important things.
**Minecraft colour codes can be used in any of the messages, see end of docs.**

`prefix`
: This is a bit of text that prefixes every message.  
E.g. `[KitPvP Plus] Never gonna give you up :)`

## Minecraft Colour Codes
Here is an example on how to use colour codes:

:white_check_mark: `"&4Red Text"`: This text is red as it uses the '&4' colour code.

:white_check_mark: `"&4&nRed Underlined text"`: This text is red and underlined as it uses the '&4' colour code to make it red and the '&n' formatting code to underline.

:white_check_mark: `"&cRed &aGreen &9Blue"`: You can colour code different words by placing colour codes next to them.

:x: `"Red&c Green&a Blue&9"`: This would highlight the text in front of the colour code so "Red" wouldn't be coloured and "Green" would be highlighted red and so on and so forth.

| Colour | Code |
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