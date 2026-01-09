kill @e[type=item, nbt={Item:{id:"minecraft:compass",components:{"minecraft:custom_data":{tracking_compass:1b}}}}]
give @s minecraft:compass[minecraft:custom_name=[{text:"Tracker",italic:false,bold:true,color:"red"}],minecraft:custom_data={tracking_compass:true}]
function manhunt:update_compass


#give conman4562 minecraft:acacia_boat[minecraft:custom_name=[{text:"Hello",italic:false,color:"red"}],tooltip_display={hidden_components:["minecraft:enchantments"]},minecraft:enchantments={"sharpness":4}]
#/give conman4562 minecraft:acacia_boat[minecraft:custom_name=[{text:"Hello",italic:false,color:"red"}],minecraft:enchantments={"sharpness":4}]