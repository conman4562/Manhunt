function manhunt:grab_position

execute as @a[team=hunters] at @s if predicate manhunt:in_overworld run function manhunt:update_compass_overworld
execute as @a[team=hunters] at @s if predicate manhunt:in_nether run function manhunt:update_compass_nether

advancement revoke @s only manhunt:use_tracking_compass