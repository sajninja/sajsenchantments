# execute at @s run playsound minecraft:item.devoted_item_return ambient @a ~ ~ ~ 0.25 1
# execute at @s run playsound minecraft:item.trident.return ambient @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 1 0.875
execute at @s run playsound minecraft:block.amethyst_block.chime ambient @a ~ ~ ~ 1 0.875

execute at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0.5 10

scoreboard players set @s devoted_items_returning 0

tp @e[type=item,distance=0,tag=devotion_savable,nbt={Item:{tag:{DevotedItem:1b}}}] @s

execute as @e[type=item,distance=0,tag=devotion_savable,nbt={Item:{tag:{DevotedItem:1b}}}] run say save return

# say return effects