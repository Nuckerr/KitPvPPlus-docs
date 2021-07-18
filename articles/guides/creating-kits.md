# Creating kits
This guide will cover how to create a kit in a step-by-step guide with images and examples!

!!! danger
    If you edit the actual `kits.yml` file, there is a high risk of you losing all your kits due to a syntax error.

## Step one
First of all your gonna want to create the kit. You can do this by running
```
/kit create <kitname>
```

!!! example
    ![Example 1](../assets/example-1.gif)

## Step two
You can now set the contents of the kit. Put all the items you want in your inventory and run
```
/kit set contents <kitname>
```

!!! example
    ![Example 2](../assets/example-2.gif)

## Step three *(Optional)*
You can set an icon. This is the item type that appears in the kit gui (if you have the enabled). You can set it by running
```
/kit set icon <kitname>
```
This will set the icon of the kit to what ever item type is in your hand. **This will also set the lore/description from the item**

!!! example
    ![Example 3](../assets/example-3.gif)

## Step four
Setting the permission allows you to limit access to the kit to only people with the certain permission. Its pretty simple, its just
```
/kit set permission <kitname> <permission>
```

!!! tip
    You can set no permission by just doing
    ```
    /kit set permission <kitname>
    ```
    ![Example 4](../assets/example-4.gif)

## Step 5
The rest is pretty self-explanatory. You can use auto-tab to find what you can set.

---
Found a problem? This documentation is open source and can be found [here](https://github.com/Nuckerr/KitPvPPlus-docs).