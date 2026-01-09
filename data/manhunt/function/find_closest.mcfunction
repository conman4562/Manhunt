#if the stored dist is further away than this entities, then remove the tag to all other entities,
#add it to this one, then store the current dist in manhunt_dst for $Temp
execute if score $Temp manhunt_dst > @s manhunt_dst run tag @e remove manhunt_closest
execute if score $Temp manhunt_dst > @s manhunt_dst run tag @s add manhunt_closest
execute if score $Temp manhunt_dst > @s manhunt_dst run scoreboard players operation $Temp manhunt_dst = @s manhunt_dst