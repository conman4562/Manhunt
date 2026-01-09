scoreboard players reset @a manhunt_x_o
scoreboard players reset @a manhunt_y_o
scoreboard players reset @a manhunt_z_o

scoreboard players reset @a manhunt_x_n
scoreboard players reset @a manhunt_y_n
scoreboard players reset @a manhunt_z_n

scoreboard players reset @a manhunt_tid


tag @e remove manhunt_died
tag @e remove manhunt_previous

scoreboard players set $Temp manhunt_enabled 1
scoreboard players set $Temp manhunt_end 10

gamemode survival @a

gamerule locator_bar false

effect give @a minecraft:regeneration 5 255 true
effect give @a minecraft:resistance 5 255 true
effect give @a minecraft:fire_resistance 5 255 true
effect give @a[team=hunters] minecraft:saturation 5 2 true
effect give @a[team=runners] minecraft:saturation 5 255 true
kill @e[type=item]
clear @a

#function manhunt:start