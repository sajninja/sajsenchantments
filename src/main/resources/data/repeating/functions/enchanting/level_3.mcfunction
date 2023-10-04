execute unless entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{RepeatingLoreValue:0}}}] unless entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{RepeatingLoreValue:1}}}] unless data entity @e[type=item,limit=1,distance=0] Item.tag.display.Lore.[0] run data modify entity @e[type=item,limit=1,distance=0] Item.tag.RepeatingLoreValue set value 1
execute unless entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{RepeatingLoreValue:0}}}] unless entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{RepeatingLoreValue:1}}}] if data entity @e[type=item,limit=1,distance=0] Item.tag.display.Lore.[0] run data modify entity @e[type=item,limit=1,distance=0] Item.tag.RepeatingLoreValue set value 0

execute if entity @e[type=item,limit=1,distance=0,predicate=repeating:enchanting/is_crossbow] if entity @e[type=item,limit=1,distance=0,predicate=repeating:enchanting/unenchanted] run data modify entity @e[type=item,distance=0,limit=1] Item.tag.display.Lore prepend value '[{"text": "Repeating III", "color": "gray", "italic": false}]'
execute if entity @e[type=item,limit=1,distance=0,predicate=repeating:enchanting/is_crossbow] unless entity @e[type=item,limit=1,distance=0,predicate=repeating:enchanting/unenchanted] if data entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{RepeatingLoreValue:1}}}] Item.tag.display.Lore.[1] run data modify entity @e[type=item,distance=0,limit=1] Item.tag.display.Lore.[1] set value '[{"text": "Repeating III", "color": "gray", "italic": false}]'
execute if entity @e[type=item,limit=1,distance=0,predicate=repeating:enchanting/is_crossbow] unless entity @e[type=item,limit=1,distance=0,predicate=repeating:enchanting/unenchanted] unless data entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{RepeatingLoreValue:1}}}] Item.tag.display.Lore.[1] run data modify entity @e[type=item,distance=0,limit=1] Item.tag.display.Lore.[0] set value '[{"text": "Repeating III", "color": "gray", "italic": false}]'
execute if entity @e[type=item,limit=1,distance=0,predicate=repeating:enchanting/is_crossbow] unless entity @e[type=item,limit=1,distance=0,predicate=repeating:enchanting/unenchanted] if entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{RepeatingLoreValue:0}}}] run data modify entity @e[type=item,distance=0,limit=1] Item.tag.display.Lore.[0] set value '[{"text": "Repeating III", "color": "gray", "italic": false}]'
execute if entity @e[type=item,limit=1,distance=0,predicate=repeating:enchanting/is_crossbow] unless data entity @e[type=item,distance=0,limit=1,predicate=repeating:enchanting/is_enchantable_crossbow] Item.tag.Enchantments run data merge entity @e[type=item,distance=0,limit=1,predicate=repeating:enchanting/is_enchantable_crossbow] {Item:{tag:{Enchantments:[{}]}}}

execute if entity @e[type=item,distance=0,limit=1,predicate=repeating:enchanting/is_book] run data modify entity @e[type=item,distance=0,limit=1] Item.tag.display.Lore.[0] set value '[{"text": "Repeating III", "color": "gray", "italic": false}]'

playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 1
particle enchant ~ ~0.25 ~ 0.25 0.25 0.25 0.125 10

xp add @p[tag=repeating_enchanter,scores={repeating_xp=30..}] -3 levels

kill @e[type=item,predicate=repeating:enchanting/is_lapis,distance=0.01..1,limit=1]
kill @s