# Plugin API
The api allows you to integrate your plugin with KitPvP Plus.

!!! note
    Certain parts of the plugin are not included in the api.
    They be being added however you will have to
    use the internal plugin to access them in the mean time

!!! tip
    All of the methods and classes have taliored descriptions (Javadocs). You can use IntelliSense the view them inside your ide or navigate it's [webpage](https://wiki.nucker.me/javadocs/) to look at them

## Setup
First of all you need to add the api as a dependency to your project  

### Dependency
=== "Maven"
    ```xml
    <!--- No repo needed! --->
    <dependency>
        <groupId>wtf.nucker</groupId>
        <artifactId>KitPvPPlus-API</artifactId>
        <version>0.3.1</version>
        <scope>provided</scope>
    </dependency>
    ```
=== "Gradle"
    ```gradle
    repositories {
        mavenCentral()      
    }

    dependencies {
        compileOnly "wtf.nucker:KitPvPPlus-API:0.3.1"
    }
    ```

### API Access
You can now use the api! In our main class we can do this:  
```java
public class Main extends JavaPlugin {
    private KitPvPPlusAPI api;

    public void onEnable() {
        this.api = KitPvPPlusAPI.getInstance();
    }


    public KitPvPPlusAPI getApi() {
        return this.api;
    }
}
```

## Player Data
You can access the data stored about players, such as kills, exp etcetera through a useful interface. To access you can do the following:  
```java
    public void onEnable() {
        // Start up logic

        KitPvPPlusAPI api = KitPvPPlusAPI.getInstance();
        PlayerData data = api.getPlayerData(UUID.fromString("68f34c4f-d00c-40fb-858d-b5a876601072"));
    }
```  
There, as simple as that! You can use your IDE's auto-suggest features to see what you can access. For example:
```java
    public void onEnable() {
        // Start up logic

        KitPvPPlusAPI api = KitPvPPlusAPI.getInstance();
        PlayerData data = api.getPlayerData(UUID.fromString("68f34c4f-d00c-40fb-858d-b5a876601072"));

        int kills = data.getKills();
        data.setState(PlayerState.SPAWN); 
    }
```

## Event Listeners
The API usefully adds some bukkit events so you can run code when certain things happen

!!! example
    Using bukkit events:
    ```java
    public class MyListener implements Listner {

        @EventHandler
        public void onEvent(EventClass event) {
            // Code..
        }
    }
    ```  
    And in your main class:
    ```java
    public void onEnable() {
        // Startup logic...

        getServer().getPluginManager().registerEvents(new MyListener, this);
    }
    ```

|Event Class name|Description|
|:--------------:|:---------:|
|`AbilityActivateEvent`|Called when a player activates an event|
|`KitLoadEvent`|Called when someone loads the event|
|`StateChangeEvent`|Called when the player's state changes|


## Custom abilities
Though players are limited to the ablities that come with the plugin. However you create your own!


### Creating your ability
First of all we need to create a new class for our ability. It also needs to extend the `Ability` class
```java
public class ExampleAbility extends Ability {

}
```  
You might get some errors but we'll fix them now.

We're going to add a constructor to our class that looks something like this
```java
public ExampleAbility() {
    super("example_ability", new ItemStack(Material.APPLE));
}
```  
The first paramater of the super method is the id of our ability. The second one is the itemstack for the ability.

!!! warning
    The id of the ability must be unique. It will conflict with other abilities otherwise.
  
Next up, we need to add method that runs when the ability is activated. We can add this

```java
@Override
public void onActivate(ItemStack item, Ability ability, PlayerInteractEvent event) {
    // Code goes here
}
```

The final thing to do is go into your main class and in the `onEnable` method add the following line of code:  
```java
public void onEnable() {
    KitPvPPlusAPI api = KitPvPPlusAPI.getInstance();
    api.registerAbility(new ExampleAbility());
}
```  

In the end, your ability class should look like this:  

!!! example
    !!! warning
    If you just copy and paste this, please just read the code to understand what everything does. Please, for your own sake
  
    ```java
    public class ExampleAbility extends Ability {

        public ExampleAbility() {
            super("example_ability", new ItemStack(Material.APPLE));
        }

        @Override
        public void onActivate(ItemStack item, Ability ability, PlayerInteractEvent event) {
            
        }
    }
    ```

### Decreasing item amount
Similar to the `TNT Shooter` ability in the default plugin, your ability can work where you have `x` amount of items and decrease them every time they're used.
Essentially in your `onActivate` method in your ability class, once you've called all your code you can add this:
```java
@Override
public void onActivate(ItemStack item, Ability ability, PlayerInteractEvent event) {
    // Code...
    decreaseItem(item);
}
```
  
### Ability cooldowns
You can easily implement cooldowns into your ability with one line of code! This is similar to the `Sonic` ability in the default plugin.
```java
@Override
public void onActivate(ItemStack item, Ability ability, PlayerInteractEvent event) {
    // Code...
    putOnCooldown(event.getPlayer(), 60);
}
```  
This will put the player on cooldown for using this ability for 60 seconds aka a minute.  
!!! tip
    You can easily convert times using the `TimeUnit` class in java. For example:  
    ```java
    TimeUnit.HOURS.toSeconds(2);
    ```  
    This will return 2 hours in seconds!

## Locations
You can actually access the locations used in KitPvPPlus such as spawn and the arena!
!!! example
    ```java
    public void onEnable() {
        // On enable logic...
        KitPvPPlusAPI api = KitPvPPlusAPI.getInstance(); // Get instance of api instance

        getServer().getOnlinePlayers().forEach(player -> { // Get online players and loop through
            player.teleport(api.getLocations().getSpawn()); // Teleport them to the spawn location
        });
    }
    ```

## Config
You can access all data from the config files through the api

!!! danger
    You cannot set data within the config files. Unless you go into
    the config instance, there is no way of accessing the raw config file

!!! example
    ```java
    public void onEnable() {
        KitPvPPlusAPI api = KitPvPPlusAPI.getInstance(); // Get instance of the API
        System.out.println(api.getConfigs().getMessage("general.permission-message").getAsString()); // Get the permission message from messages.yml as string object
    }
    ```
Getting data from the other configs is pretty similar

## Coming soon
|Feature|ETA|
|:------:|:--:|
|Ability Manager|*None*|
|Kit Manager|*None*|

---
Found a problem? This documentation is open source and can be found [here](https://github.com/Nuckerr/KitPvPPlus-docs).