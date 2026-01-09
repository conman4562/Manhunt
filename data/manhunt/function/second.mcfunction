#this function runs every second
#manhunt_enabled is 1 during the lead and 2 after (?)
execute if score $Temp manhunt_enabled matches 1 run function manhunt:hunt_second
execute as @a[team=hunters] run advancement revoke @s only manhunt:use_tracking_compass
scoreboard players set $Temp manhunt_ticks 0