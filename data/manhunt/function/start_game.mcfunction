team join hunters Stall49
team join hunters RoyalThumb
team join hunters pGem
team join hunters zexstonjr16
team join runners conman4562

scoreboard players reset @a manhunt_x_o
scoreboard players reset @a manhunt_y_o
scoreboard players reset @a manhunt_z_o

scoreboard players reset @a manhunt_x_n
scoreboard players reset @a manhunt_y_n
scoreboard players reset @a manhunt_z_n

scoreboard players reset @a manhunt_tid


tag @e remove manhunt_died
tag @e remove manhunt_previous

scoreboard players set $Temp manhunt_end 10
scoreboard players set $Temp manhunt_ticks 20

gamerule locator_bar false
time set 1000
weather clear
gamemode survival @a
advancement revoke @a everything
clear @a
effect give @a minecraft:regeneration 5 255 true
effect give @a minecraft:resistance 5 255 true
effect give @a minecraft:fire_resistance 5 255 true
effect give @a minecraft:saturation 5 255 true
kill @e[type=item]


scoreboard players set $Temp manhunt_enabled 1

#function manhunt:start