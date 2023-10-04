execute if entity @s[advancements={repeating:using_crossbow=true}] run scoreboard players add @s crossbow_using_timer 1

execute if entity @s[predicate=repeating:holding_crossbow_mainhand] store result score @s arrows_left run data get entity @s SelectedItem.tag.RepeatingLevel
execute if entity @s[predicate=repeating:holding_crossbow_offhand,predicate=!repeating:holding_crossbow_mainhand] store result score @s arrows_left run data get entity @s Inventory.[{Slot:-106b}].tag.RepeatingLevel

execute if entity @s[predicate=repeating:holding_crossbow_charged,scores={crossbow_using_timer=1..},predicate=repeating:holding_crossbow_mainhand] at @s run function repeating:start
execute if entity @s[predicate=repeating:holding_crossbow_charged,scores={crossbow_using_timer=1..},predicate=repeating:holding_crossbow_offhand] at @s run function repeating:start

execute if entity @s[scores={arrows_left=1,used_crossbow=1..}] at @s run function repeating:shoot_last

execute if entity @s[scores={arrows_left=2..,used_crossbow=1..}] at @s run function repeating:reload

execute if entity @s[scores={used_crossbow=0},predicate=repeating:holding_crossbow_mainhand] at @e[type=armor_stand,tag=repeating_stand] if score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] repeating.uuid_score run item replace entity @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand
execute if entity @s[scores={used_crossbow=0},predicate=repeating:holding_crossbow_offhand] at @e[type=armor_stand,tag=repeating_stand] if score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] repeating.uuid_score run item replace entity @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] weapon.offhand from entity @s weapon.offhand
execute if entity @s[scores={used_crossbow=0},predicate=!repeating:holding_crossbow_mainhand] at @e[type=armor_stand,tag=repeating_stand] if score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] repeating.uuid_score run item replace entity @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] weapon.mainhand with air
execute if entity @s[scores={used_crossbow=0},predicate=!repeating:holding_crossbow_offhand] at @e[type=armor_stand,tag=repeating_stand] if score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] repeating.uuid_score run item replace entity @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] weapon.offhand with air