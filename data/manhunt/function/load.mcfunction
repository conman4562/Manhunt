#this function is called when loading the datapack
#when the world is loaded/server starts/ command /reload is run

scoreboard objectives add manhunt_rid dummy
scoreboard objectives add manhunt_tid dummy

scoreboard objectives add manhunt_ticks dummy
scoreboard objectives add manhunt_enabled dummy
scoreboard objectives add manhunt_end dummy

scoreboard objectives add manhunt_deaths deathCount

scoreboard objectives add manhunt_x dummy
scoreboard objectives add manhunt_y dummy
scoreboard objectives add manhunt_z dummy

scoreboard objectives add manhunt_x_o dummy
scoreboard objectives add manhunt_y_o dummy
scoreboard objectives add manhunt_z_o dummy

scoreboard objectives add manhunt_x_n dummy
scoreboard objectives add manhunt_y_n dummy
scoreboard objectives add manhunt_z_n dummy

scoreboard objectives add manhunt_dst dummy
scoreboard objectives add manhunt_min_dst dummy

scoreboard players set $Temp manhunt_enabled 0

team add hunters "hunters"
team add runners "runners"

tellraw @a {"text":"manhunt custom (1.21.6+) Loaded","bold":true,"color":"blue"}