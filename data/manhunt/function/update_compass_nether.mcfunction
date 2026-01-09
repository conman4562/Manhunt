#update the hunter compass in the nether

#mark hunters with tag so runners can get the hunters position
tag @s add tracker_temp

#Distance calculation
#copy hunter position into each runner scoreboard (x,y,z)
execute as @e[team=runners] store result score @s manhunt_x run data get entity @e[tag=tracker_temp,limit=1] Pos[0]
execute as @e[team=runners] store result score @s manhunt_y run data get entity @e[tag=tracker_temp,limit=1] Pos[1]
execute as @e[team=runners] store result score @s manhunt_z run data get entity @e[tag=tracker_temp,limit=1] Pos[2]

#subtract runner position from hunter position
execute as @e[team=runners] run scoreboard players operation @s manhunt_x -= @s manhunt_x_n
execute as @e[team=runners] run scoreboard players operation @s manhunt_y -= @s manhunt_y_n
execute as @e[team=runners] run scoreboard players operation @s manhunt_z -= @s manhunt_z_n

#square each
execute as @e[team=runners] run scoreboard players operation @s manhunt_x *= @s manhunt_x
execute as @e[team=runners] run scoreboard players operation @s manhunt_y *= @s manhunt_y
execute as @e[team=runners] run scoreboard players operation @s manhunt_z *= @s manhunt_z

#add them up
execute as @e[team=runners] run scoreboard players set @s manhunt_dst 0
execute as @e[team=runners] run scoreboard players operation @s manhunt_dst += @s manhunt_x
execute as @e[team=runners] run scoreboard players operation @s manhunt_dst += @s manhunt_y
execute as @e[team=runners] run scoreboard players operation @s manhunt_dst += @s manhunt_z

scoreboard players set $Temp manhunt_dst 2147483647

#store the smallest distance in $Temp manhunt_dst
execute as @e[team=runners] run function manhunt:find_closest

#execute this when a new runner is being tracked
execute unless score @s manhunt_tid = @e[tag=manhunt_closest,limit=1] manhunt_rid run tellraw @s [{"text":""},{"text":"Tracking: ","color":"red"},{"selector":"@e[tag=manhunt_closest]"}]
#update who is being tracked
scoreboard players operation @s manhunt_tid = @e[tag=manhunt_closest,limit=1] manhunt_rid

execute store result storage manhunt:compass_data X int 1 run scoreboard players get @e[tag=manhunt_closest,limit=1] manhunt_x_n
execute store result storage manhunt:compass_data Y int 1 run scoreboard players get @e[tag=manhunt_closest,limit=1] manhunt_y_n
execute store result storage manhunt:compass_data Z int 1 run scoreboard players get @e[tag=manhunt_closest,limit=1] manhunt_z_n
data modify storage manhunt:compass_data dimension set value "the_nether"

#tellraw @a "running set compass nether | debug"
function manhunt:set_compass
#with storage manhunt:compass_data


tag @s remove tracker_temp