#this function is run every game tick
execute if score $Temp manhunt_enabled matches 1 as @a[scores={manhunt_deaths=1..},team=runners] run function manhunt:runners_death
scoreboard players set @a manhunt_deaths 0
#if a compass exists as an item with ocmponent tracking compass
#it is known that it has been dropped => kill it and give it back
#execute if entity @e[type=item, nbt={Item:{id:"minecraft:compass",components:{"minecraft:custom_data":{tracking_compass:1b}}}}] as @a[team=hunters] run function manhunt:compass_inventory_check

scoreboard players add $Temp manhunt_ticks 1
execute if score $Temp manhunt_ticks matches 20.. run function manhunt:second