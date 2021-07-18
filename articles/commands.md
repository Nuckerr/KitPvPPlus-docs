# Commands
There are over 35 amount of commands in KitPvP Plus. This article goes over all the commands, their aliases and permission as well as a breif
description.

------------

`/balance`  
Lets the player view their balance.  
**Aliases:** `/bal`  
**Permissions:** *None*

`/join`  
Sends you to the arena.  
**Aliases:** `/play`  
**Permissions:** *None*

`/kit`  
Opens the kit selector or gives you a kit.  
**Aliases:** `/kits`  
**Usage:**

- `/kit` - Opens the GUI. (Permission: *None*)
- `/kit <kit name>` - Allows you to select a kit without opening the GUI. (Permission: *None*)
- `/kit <kitname> [player]` - Loads a given kit (To given player if provided). (Permission: `kitpvpplus.givekits`)
- `/kit edit permission <kitname> <permission>` - Edits the permission of the kit (Permission: `kitpvpplus.kits.edit`)
- `/kit edit price <kitname> <price>` - Edits the price of the kit (Permission: `kitpvpplus.kits.edit`)
- `/kit edit displayname <kitname> <newdisplayname>` - Edit's the displayname of a given kit. (Permission: `kitpvpplus.kits.edit`)
- `/kit edit icon <kitname>` - Edits the icon of given kit to the item in your hand. (Permission: `kitpvpplus.kits.edit`)
- `/kit contents <kitname>` - Edits the contents of the given kit to the items in your inventory. (Permission: `kitpvpplus.kits.edit`)
- `/kit delete <kitname>` - Deletes the given kit (Permission: kitpvpplus.kits.delete)

`/kitpvp`  
Used for managing the KitPvP Plus plugin.  
**Aliases:** `/kpvp`, `/kitpvpcore`, `/kpvpcore`, `/kpvpc`, `/kitpvpplus`, `/kpvpplus`, `/kpvpp`, `/kitpvpp`   
**Permissions:** `kitpvpplus.admin`
!!! note
    If the player does not have permission, it will just send the credits.  
**Usage:**

- `/kitpvp abilities [ability]` - Opens gui with all the ability items (unless specified in args). (Permission: `kitpvpplus.admin`)
- `/kitpvp reload` - Reloads the configs and database. (Permission: `kitpvpplus.admin`)
- `/kitpvp reload config` - Reloads the configuration. (Permission: `kitpvpplus.admin`)
- `/kitpvp reload database` - Reloads the database. (Permission: `kitpvpplus.admin`)
- `/kitpvp credits` - Sends the credits of all the people who helped out with the plugin.

`/lobby`  
Sends you back to spawn.  
**Aliases:** `/l`, `/spawn`, `/stuck`  
**Permissions:** *None*

`/playersbalance`  
Shows someone elses balance.  
**Aliases:** `/playersbal`, `otherbal`, `otherbalance`  
**Permissions:** `kitpvpplus.balance.other`

`/pay`  
Sends money to another player.  
**Aliases:** `/sendmoney`  
**Permissions:** *None*

`/setarena`  
Sets the location for the fighting arena.  
**Aliases:** *None*  
**Permissions:** `kitpvpplus.setlocations`

`/setspawn`  
Sets the location for spawn.  
**Aliases:** *None*  
**Permissions:** `kitpvpplus.setlocations`

`/statistics`  
View your stats.  
**Aliases:** `/stats`  
**Permissions:** *None*
**Usage**:
- `/statistics [player]` (Permission: `kitpvpplus.stats.other` **if player is specified**)

`/economy`  
**Usage:**

- `/eco give [player] [amount]` - Adds x amount of money to a players balance. (Permission: `kitpvpplus.economy.admin`)
- `/eco set [player] [amount]` - Sets the players balance to x amount. (Permission: `kitpvpplus.economy.admin`)
- `/eco reset [player]` - Resets a players balance to 0 (Permission: `kitpvpplus.economy.admin`)

**Aliases:** `/eco`  
**Permissions:**

<!---
`/`  
  
**Aliases:**  
**Permissions:**
--->


<!---| Command || Description || Aliases || Permissions |
|--||------||--||--|
| `/balance` || Lets the player view their balance. ||  ||  |
| `/economy` || Allows server admins to manage other player's balancel. ||`eco`||
|  ||  | -->

---
Found a problem? This documentation is open source and can be found [here](https://github.com/Nuckerr/KitPvPPlus-docs).