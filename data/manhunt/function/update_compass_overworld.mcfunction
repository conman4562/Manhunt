#say uco

tag @s add tracker_temp

#Distance calculation
execute as @e[team=runners] store result score @s manhunt_x run data get entity @e[tag=tracker_temp,limit=1] Pos[0]
execute as @e[team=runners] store result score @s manhunt_y run data get entity @e[tag=tracker_temp,limit=1] Pos[1]
execute as @e[team=runners] store result score @s manhunt_z run data get entity @e[tag=tracker_temp,limit=1] Pos[2]

execute as @e[team=runners] run scoreboard players operation @s manhunt_x -= @s manhunt_x_o
execute as @e[team=runners] run scoreboard players operation @s manhunt_y -= @s manhunt_y_o
execute as @e[team=runners] run scoreboard players operation @s manhunt_z -= @s manhunt_z_o

execute as @e[team=runners] run scoreboard players operation @s manhunt_x *= @s manhunt_x
execute as @e[team=runners] run scoreboard players operation @s manhunt_y *= @s manhunt_y
execute as @e[team=runners] run scoreboard players operation @s manhunt_z *= @s manhunt_z

execute as @e[team=runners] run scoreboard players set @s manhunt_dst 0
execute as @e[team=runners] run scoreboard players operation @s manhunt_dst += @s manhunt_x
execute as @e[team=runners] run scoreboard players operation @s manhunt_dst += @s manhunt_y
execute as @e[team=runners] run scoreboard players operation @s manhunt_dst += @s manhunt_z

scoreboard players set $Temp manhunt_dst 2147483647

execute as @e[team=runners] run function manhunt:find_closest

execute unless score @s manhunt_tid = @e[tag=manhunt_closest,limit=1] manhunt_rid run tellraw @s [{"text":""},{"text":"Tracking: ","color":"red"},{"selector":"@e[tag=manhunt_closest]"}]
scoreboard players operation @s manhunt_tid = @e[tag=manhunt_closest,limit=1] manhunt_rid

execute store result storage manhunt:compass_data X int 1 run scoreboard players get @e[tag=manhunt_closest,limit=1] manhunt_x_o
execute store result storage manhunt:compass_data Y int 1 run scoreboard players get @e[tag=manhunt_closest,limit=1] manhunt_y_o
execute store result storage manhunt:compass_data Z int 1 run scoreboard players get @e[tag=manhunt_closest,limit=1] manhunt_z_o
data modify storage manhunt:compass_data dimension set value "overworld"

#tellraw @a "running set compass overworld | debug"
function manhunt:set_compass

tag @s remove tracker_temp