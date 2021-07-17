# Plugin API
The api allows you to intergrate your plugin with KitPvP Plus.

!!! note
    Certain parts of the plugin are not included in the api.
    They be being added however you will have to
    use the internal plugin to access them in the mean time

## Custom abilities
Though players are limited to the ablities that come with the plugin. However you create your own!

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
The first paramater of the super method is the id of our ability. This is what identifies