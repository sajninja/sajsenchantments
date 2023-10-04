execute if entity @s[predicate=repeating:holding_crossbow_mainhand] at @e[type=armor_stand,tag=repeating_stand] if score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] repeating.uuid_score as @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] run item replace entity @s weapon.mainhand with air
execute if entity @s[predicate=repeating:holding_crossbow_offhand] at @e[type=armor_stand,tag=repeating_stand] if score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] repeating.uuid_score as @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] run item replace entity @s weapon.offhand with air

# item modify entity @s[scores={arrows_left=..4},predicate=repeating:holding_crossbow_mainhand,predicate=!repeating:holding_crossbow_offhand,advancements={repeating:crossbow_durability_changed=true}] weapon.mainhand repeating:fix

# item modify entity @s[scores={arrows_left=..4},predicate=repeating:holding_crossbow_offhand,predicate=!repeating:holding_crossbow_mainhand,advancements={repeating:crossbow_durability_changed=true}] weapon.offhand repeating:fix

item modify entity @s[scores={arrows_left=..4},predicate=repeating:holding_crossbow_mainhand,predicate=!repeating:holding_crossbow_offhand] weapon.mainhand repeating:end

item modify entity @s[scores={arrows_left=..4},predicate=repeating:holding_crossbow_offhand,predicate=!repeating:holding_crossbow_mainhand] weapon.offhand repeating:end

scoreboard players remove @s arrows_left 1