execute if predicate repeating:random_20 if data entity @s Offers.Recipes.[8].sell{id:"minecraft:crossbow",Count:1b} unless data entity @s Offers.Recipes.[8].sell.tag.Enchantments[{id:"minecraft:piercing"}] unless data entity @s Offers.Recipes.[8].sell.tag.Enchantments[{id:"minecraft:multishot"}] run data modify entity @s Offers.Recipes.[8].sell.tag.display set value {Lore:['[{"text": "Repeating", "color": "gray", "italic": false}]']}
execute if predicate repeating:random_20 if data entity @s Offers.Recipes.[9].sell{id:"minecraft:crossbow",Count:1b} unless data entity @s Offers.Recipes.[9].sell.tag.Enchantments[{id:"minecraft:piercing"}] unless data entity @s Offers.Recipes.[9].sell.tag.Enchantments[{id:"minecraft:multishot"}] run data modify entity @s Offers.Recipes.[9].sell.tag.display set value {Lore:['[{"text": "Repeating", "color": "gray", "italic": false}]']}

# say test repeating crossbow

tag @s add fletcher_repeating_modified