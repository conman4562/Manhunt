execute as @s unless items entity @s inventory.* minecraft:compass[custom_data={tracking_compass:true}] \
 run execute as @s unless items entity @s hotbar.* minecraft:compass[custom_data={tracking_compass:true}] \
 run execute as @s unless items entity @s weapon.offhand minecraft:compass[custom_data={tracking_compass:true}] \ 
 run execute as @s unless items entity @s player.crafting.* minecraft:compass[custom_data={tracking_compass:true}] \
 run execute as @s unless items entity @s player.cursor minecraft:compass[custom_data={tracking_compass:true}] \
 run function manhunt:give_compass