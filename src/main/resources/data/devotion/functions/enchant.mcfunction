execute as @p[tag=devotion_enchanter] store result score @s devotion_xp run data get entity @s XpLevel 1

execute if entity @p[tag=devotion_enchanter,scores={devotion_xp=30..}] as @e[type=item,nbt=!{Item:{id:"minecraft:lapis_lazuli"}},nbt=!{Item:{id:"minecraft:enchanted_book"}},nbt=!{Item:{tag:{display:{Lore:['[{"text": "Devotion", "color": "gray", "italic": false}]']}}}},limit=1,sort=nearest] run data modify entity @s Item.tag.display.Lore prepend value '[{"text": "Devotion", "color": "gray", "italic": false}]'

# enchant it if it needs to be enchanted
execute if entity @p[tag=devotion_enchanter,scores={devotion_xp=30..}] as @e[type=item,nbt=!{Item:{tag:{Enchantments:[{}]}}},nbt=!{Item:{id:"minecraft:lapis_lazuli"}},nbt=!{Item:{id:"minecraft:enchanted_book"}},nbt={Item:{tag:{display:{Lore:['[{"text": "Devotion", "color": "gray", "italic": false}]']}}}},limit=1,sort=nearest] run data merge entity @s {Item:{tag:{Enchantments:[{}]}}}

execute if entity @p[tag=devotion_enchanter,scores={devotion_xp=30..}] run execute if entity @e[type=item,nbt=!{Item:{id:"minecraft:enchanted_book"}},nbt={Item:{tag:{display:{Lore:['[{"text": "Devotion", "color": "gray", "italic": false}]']}}}},limit=1,sort=nearest] run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 1
execute if entity @p[tag=devotion_enchanter,scores={devotion_xp=30..}] run execute if entity @e[type=item,nbt=!{Item:{id:"minecraft:enchanted_book"}},nbt={Item:{tag:{display:{Lore:['[{"text": "Devotion", "color": "gray", "italic": false}]']}}}},limit=1,sort=nearest] run particle enchant ~ ~ ~ 0.1 0.1 0.1 0.5 50 force

execute if entity @p[tag=devotion_enchanter,scores={devotion_xp=30..}] run execute if entity @e[type=item,nbt=!{Item:{id:"minecraft:enchanted_book"}},nbt={Item:{tag:{display:{Lore:['[{"text": "Devotion", "color": "gray", "italic": false}]']}}}},limit=1,sort=nearest] run kill @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:3b}},distance=..0.5]
execute if entity @p[tag=devotion_enchanter,scores={devotion_xp=30..}] run execute if entity @e[type=item,nbt=!{Item:{id:"minecraft:enchanted_book"}},nbt={Item:{tag:{display:{Lore:['[{"text": "Devotion", "color": "gray", "italic": false}]']}}}},limit=1,sort=nearest] run kill @s

execute if entity @p[tag=devotion_enchanter,scores={devotion_xp=30..}] run xp add @p[tag=devotion_enchanter,scores={devotion_xp=30..}] -3 levels
execute if entity @p[tag=devotion_enchanter,scores={devotion_xp=30..}] run tag @p[tag=devotion_enchanter] remove devotion_enchanter