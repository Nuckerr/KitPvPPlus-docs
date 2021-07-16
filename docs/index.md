#  Configuration Files
## config.yml

`data-storage`
: This section of the file defines how data is stored.

`type`
: Configures the storage type.

- If you are using a MySQL database, this should be set to `mysql`.
- If You are not using a database this should be set to `flat`.
- If you are using a Mongo database, this should be set to `mongo`.

`host`
: Sets the IP address of the MySQL or Mongo database.  
**Syntax:** `host: your-database-ip`  
*Note: this should **NOT** include port number.*

`port`
: Sets the port on which the database is listening on.  
**Syntax:** `port: database-port`

| Database | Default Port |
| :---: | :----: |
| MySQL | 3306 |
| Mongo | 27017 |

`database`
: Identifies the database in which to store data.  
**Syntax:** `database: "database-name"`  
*Note: this value is **only** needed for MySQL.*

`authentication`
: Authentication settings.  
*Note: This setting has no value.*

`enabled`
: Turns on authentication for the database.  
**Syntax:** `enabled: true|false`  
*Note: authentication is required for MySQL.*

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
*Note: This setting has no value.*

`kills`
: Defines how many experience points a player should receive per kill.  
**Syntax:** `kills: number-of-experience-points`  
*Note: This should be a number with a decimal point. E.g. `kills: 25.0`. Even if it is a whole number, it should still have the `.0` after it.*

`filler-item`
: This defines the item that should fill in the gaps in the inventory GUI.  
*Note: Item codes can be found here: [https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/Material.html](https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/Material.html)*

`abilities`
: This section is where the abilities are defined  
**Syntax:**
```yml
#This is the name of the ability, it does not show up in-game.
ability-name:
  #This is the name of the item that will give the ability
  displayname:  "display-name-here"
  #This is the item that will be given to player.
  #Item codes can be found here: https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/Material.html
  material:  "ITEM-CODE"
  #How many of the items to give to the player.
  amount:  69
  #Pretty purple text that is added to the item.
  lore:
     -  "&7Shoot opponents with primed tnt"
     -  "&7Just right click"
```
*Note: Minecraft colour codes can be used in the lore quote marks in the config above, see end of docs.*

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
```yml
disabled-worlds:
   - never_gonna_give_you_up
   - never_gonna_let_you_down
   - never_gonna_run_around
   - and_desert_you
```
`spawn`
: This section defines the text on the spawn/lobby scoreboard.  
*Note: this setting has no value*

`title`
: This defines the text at the top of the scoreboard (The Title).  
**Syntax:** `title: "title-text"`  
*Note: Minecraft colour coding tags can be used here, see end of docs.*

`board`
: This section defines the text on the scoreboard  
**Syntax:**
```yml
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
*Note: Minecraft colour codes can be used in any of the quote marks in the config above.*

`arena`
: This section defines the text on the arena scoreboard.  
*Note: This setting has no value.*

`title`
: This defines the text at the top of the scoreboard (The Title).  
**Syntax:** `title: "title-text"`  
*Note: Minecraft colour coding tags can be used here, see end of docs.*

`board`
: This section defines the text on the scoreboard  
**Syntax:**
```yml
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
*Note: Minecraft colour codes can be used in any of the quote marks in the config above.*

## messages.yml

This section won't be so well documented as there is over 100 different messages and I think it is quite self-explanatory. However, I will document some of the more important things.
**Minecraft colour codes can be used in any of the messages, see end of docs.**

`prefix`
: This is a bit of text that prefixes every message.  
E.g. `[KitPvP Plus] Never gonna give you up :)`

## Minecraft Colour Codes
Here is an example on how to use colour codes:

`"&4Red Text"`: This text is red as it uses the '&4' colour code.

`"&4&nRed Underlined text"`: This text is red and underlined as it uses the '&4' colour code to make it red and the '&n' formatting code to underline.

`"&cRed &aGreen &9Blue"`: You can colour code different words by placing colour codes next to them.

`"Red&c Green&a Blue&9"`: This would highlight the text in front of the colour code so "Red" wouldn't be coloured and "Green" would be highlighted red and so on and so forth.

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