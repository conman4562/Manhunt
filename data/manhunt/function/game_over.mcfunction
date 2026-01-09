#this function runs when the game is over
#clear the compasses
#clear @a[team=hunters] minecraft:compass
#text on main screen (commented)
#title @a title {"text":"Game over","bold":true,"color":"gold"}
#tellraw @a "game over | debug"
#set the variable in the scoreboard labelled manhunt_enabled to 0
scoreboard players set $Temp manhunt_enabled 0