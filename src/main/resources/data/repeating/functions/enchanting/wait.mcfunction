execute if entity @s[predicate=repeating:enchanting/is_crossbow] unless entity @e[tag=repeating_first_crossbow,predicate=repeating:enchanting/is_crossbow] run tag @s add repeating_first_crossbow

execute if block ~ ~-0.75 ~ enchanting_table if entity @e[type=item,predicate=repeating:enchanting/is_lapis,distance=..0.5] if entity @e[type=item,predicate=repeating:enchanting/is_enchantable_item,distance=0.001..0.5] run function repeating:enchanting/start

tag @p[scores={dropped_repeating_book=1..},limit=1,sort=nearest] add repeating_enchanter
tag @p[scores={dropped_repeating_crossbow=1..},limit=1,sort=nearest] add repeating_enchanter
scoreboard players set @a[scores={dropped_repeating_book=1..}] dropped_repeating_book 0
scoreboard players set @a[scores={dropped_repeating_crossbow=1..}] dropped_repeating_crossbow 0