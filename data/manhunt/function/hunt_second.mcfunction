execute if score $Temp manhunt_enabled matches 0 run return fail
execute as @e[team=runners] unless score @s manhunt_rid matches -2147483647.. run execute store result score @s manhunt_rid run data get entity @s UUID[0]

#Game over detection (runners)
#if all runners have died run game over
execute unless entity @e[team=runners,tag=!manhunt_died] run function manhunt:game_over

#Game over detection (dragon death)
#this function gives 10s for the dragon to load/spawn in (?)
execute in minecraft:the_end as @a[predicate=manhunt:in_end] if score $Temp manhunt_end matches 1.. run scoreboard players remove $Temp manhunt_end 1
#any time after the 10 seconds and if the dragon does not exist run gameover
execute if score $Temp manhunt_end matches 0 unless entity @e[type=minecraft:ender_dragon] run function manhunt:game_over

#Give runners compass
#tellraw @a "giving hunters compass | debug"
execute as @a[team=hunters] run function manhunt:compass_inventory_check