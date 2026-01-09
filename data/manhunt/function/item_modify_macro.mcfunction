#tellraw @a "inside item modify macro | debug"
#tellraw @a "help me"
#$tellraw @a "$(slot), $(X), $(Y), $(Z), $(dimension) | debug"

$execute unless items entity @s $(slot) minecraft:compass[minecraft:custom_data={tracking_compass:true}] run return fail

$item modify entity @s $(slot) {\
    "function":"minecraft:set_components","components":{\
        "minecraft:custom_data":{tracking_compass:true},\
        "minecraft:max_stack_size":1,\
        "minecraft:consumable":{"consume_seconds":1000000000, "animation":"none", "has_consume_particles":false},\
        "minecraft:enchantments":{"vanishing_curse":1},\
        "minecraft:enchantment_glint_override":false,\
        "minecraft:tooltip_display": {\
            "hidden_components": [\
                "minecraft:enchantments"\
            ]\
    },\
        "minecraft:lodestone_tracker":{\
            "target":{\
                "pos":[\
                    I;$(X),$(Y),$(Z)\
                ]\
                ,"dimension":"$(dimension)"\
            }\
            ,"tracked":false\
        }\
    }\
}

#\


#    ,"conditions":[\
        {\
            "condition":\
                "minecraft:entity_properties",\
                "entity":"this",\
            "predicate":{\
                "slots":{\
                    "$(slot)":{\
                        "items":"minecraft:compass"\
                    }\
                }\
            }\
        }\
    ]\

#