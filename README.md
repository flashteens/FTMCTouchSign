# FTMCTouchSign
This is a datapack framework that lets you use a sign like a touchscreen. In other words, it gives your datapack the ability to tell **which part** of a wall sign that a player clicked on.
* **DISCLAIMER:** This project has no relation or source code references with [another Bukkit plugin named "Touchsigns"](https://github.com/WesternIcelander/Touchsigns). The only two things in common are the similarity in the names and the purpose of development, both of which are coincidences.
* As a datapack framework, this project does not conflict with the Touchsigns plugin at all. Please refer to this project as "**FTMC** TouchSign" or the "TouchSign **datapack**" to avoid confusion with the plugin mentioned above.

---

## Features
* Works in Vanilla Minecraft 1.13 through 1.21.
* Gives your datapack the ability to tell **which part** of a wall sign that a player clicked on. (Check out the [usages](#how-to-use) below)
* Able to correctly detect the clicking position even while the player is sneaking or gliding with an elytra.
* Provides some demo examples that help you understand the usage.

## How to use

**Step1.** Download this datapack framework &amp; [put it into the datapack folder in your map](https://minecraft.wiki/w/Tutorials/Installing_a_data_pack). Please check your Minecraft version to determine which folder to download:
| Your Minecraft Version | Datapack Folder Name |
| --- | --- |
| 1.13 - 1.13.2 | `FTMC TouchSign Framework for 1.13` |
| 1.14 - 1.19.4 | `FTMC TouchSign Framework for 1.14` |
| 1.20 - 1.20.4 | `FTMC TouchSign Framework for 1.20` |
| 1.20.5 - 1.20.6 | `FTMC TouchSign Framework for 1.20.5` |
| 1.21 | `FTMC TouchSign Framework for 1.21` |

**Step2.** [Make your own datapack](https://minecraft.wiki/w/Tutorials/Creating_a_data_pack) and put it into the same datapack folder.

In your datapack, there must be an `mcfunction` file that invocates the FTMC TouchSign framework, so you will get some information about the clicking position.

For an example, we create a file called `onclick.mcfunction` and put it under namespace `yourcode`:
```
function ftmc:touchsign/click_handler
execute if score @s fttsign_touchx matches <X1>..<X2> if score @s fttsign_touchy matches <Y1>..<Y2> run <YourAction1>
execute if score @s fttsign_touchx matches <X3>..<X4> if score @s fttsign_touchy matches <Y3>..<Y4> run <YourAction2>
# Please replace X1 ~ X4 and Y1 ~ Y4 above with the exact coordinate values.
```
In this function, `fttsign_touchx` and `fttsign_touchy` refers to the coordinates that the player clicks onto the sign.
* `fttsign_touchx` ranges from `-500` (leftmost) to `500` (rightmost)
* `fttsign_touchy` ranges from `-250` (top) to `250` (bottom)

The example above will make your sign run `<YourAction1>` when clicking on the **pink** zone of the following screenshot &amp; and run `<YourAction2>` when clicking on the **green** zone below:

![image](https://github.com/user-attachments/assets/fe9b6b0e-8363-4309-9770-b261c7ab77bd)

**Step3.** Make a clickable sign and obtain the sign with a `/give` command. Some examples can be seen on the demo folders of this project.
* Click on the links below for the example in each corresponding Minecraft version:
  - [For 1.20.5 - 1.21](https://github.com/flashteens/FTMCTouchSign/blob/main/FTMC%20TouchSign%20Framework%20for%201.21/data/ftmc/function/touchsign/demo/give_debug_sign.mcfunction) | [For 1.20 - 1.20.4](https://github.com/flashteens/FTMCTouchSign/blob/main/FTMC%20TouchSign%20Framework%20for%201.20/data/ftmc/functions/touchsign/demo/give_debug_sign.mcfunction) | [For 1.14 - 1.19.4](https://github.com/flashteens/FTMCTouchSign/blob/main/FTMC%20TouchSign%20Framework%20for%201.14/data/ftmc/functions/touchsign/demo/give_debug_sign.mcfunction) | [For 1.13 - 1.13.2](https://github.com/flashteens/FTMCTouchSign/blob/main/FTMC%20TouchSign%20Framework%20for%201.13/data/ftmc/functions/touchsign/demo/give_debug_sign.mcfunction)

## Future plans
* Plan to support hanging signs
* More demo examples
