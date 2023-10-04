execute if entity @s[predicate=devotion:enchantment_level/1] if predicate devotion:random/50 run tag @s add devotion_savable
execute if entity @s[predicate=devotion:enchantment_level/2] if predicate devotion:random/75 run tag @s add devotion_savable
execute if entity @s[predicate=devotion:enchantment_level/3] if predicate devotion:random/87.5 run tag @s add devotion_savable
# tag @s add devotion_savable
tag @s add devotion_savable_checked

# say decide savable

tag @s[tag=!devotion_savable] add devotion_unsavable

# execute as @s[tag=devotion_savable] run say function devotion:save
# execute as @a if score @e[type=item,limit=1,distance=0,tag=!devotion_savable,nbt={Item:{tag:{DevotedItem:1b}}}] uuid_score = @s uuid_score run scoreboard players add @s devoted_items_failing 1
execute at @a if score @s uuid_score = @p uuid_score run scoreboard players add @p devoted_items_failing 1