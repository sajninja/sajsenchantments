playsound minecraft:item.armor.equip_iron ambient @a ~ ~ ~ 1 1
# execute unless entity @e[type=armor_stand,tag=repeating_stand,distance=999.9..1000.1] run summon armor_stand ~ ~1000 ~ {Invisible:1b,Marker:1b,Tags:["repeating_stand"],DisabledSlots:65793}

execute at @e[type=armor_stand,tag=repeating_stand] unless score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,limit=1,sort=nearest] repeating.uuid_score run summon armor_stand ~ ~1000 ~ {Invisible:1b,Marker:1b,Tags:["repeating_stand"],DisabledSlots:65793}
execute unless entity @e[type=armor_stand,tag=repeating_stand] run summon armor_stand ~ ~1000 ~ {Invisible:1b,Marker:1b,Tags:["repeating_stand"],DisabledSlots:65793}
execute at @e[tag=repeating_stand,distance=999.9..1000.1,limit=1] run function repeating:uuid_store

item modify entity @s[predicate=repeating:holding_crossbow_mainhand,predicate=repeating:holding_levels/mainhand_1] weapon.mainhand repeating:starts/1
item modify entity @s[predicate=repeating:holding_crossbow_mainhand,predicate=repeating:holding_levels/mainhand_2] weapon.mainhand repeating:starts/2
item modify entity @s[predicate=repeating:holding_crossbow_mainhand,predicate=repeating:holding_levels/mainhand_3] weapon.mainhand repeating:starts/3
item modify entity @s[predicate=repeating:holding_crossbow_mainhand,predicate=repeating:holding_levels/mainhand_4] weapon.mainhand repeating:starts/4
item modify entity @s[predicate=repeating:holding_crossbow_offhand,predicate=!repeating:holding_crossbow_mainhand,predicate=repeating:holding_levels/offhand_1] weapon.offhand repeating:starts/1
item modify entity @s[predicate=repeating:holding_crossbow_offhand,predicate=!repeating:holding_crossbow_mainhand,predicate=repeating:holding_levels/offhand_2] weapon.offhand repeating:starts/2
item modify entity @s[predicate=repeating:holding_crossbow_offhand,predicate=!repeating:holding_crossbow_mainhand,predicate=repeating:holding_levels/offhand_3] weapon.offhand repeating:starts/3
item modify entity @s[predicate=repeating:holding_crossbow_offhand,predicate=!repeating:holding_crossbow_mainhand,predicate=repeating:holding_levels/offhand_4] weapon.offhand repeating:starts/4

execute if entity @s[predicate=repeating:holding_crossbow_mainhand] at @e[type=armor_stand,tag=repeating_stand] if score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] repeating.uuid_score run item replace entity @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand
execute if entity @s[predicate=repeating:holding_crossbow_offhand] at @e[type=armor_stand,tag=repeating_stand] if score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] repeating.uuid_score run item replace entity @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] weapon.offhand from entity @s weapon.offhand

scoreboard players set @s crossbow_using_timer 0