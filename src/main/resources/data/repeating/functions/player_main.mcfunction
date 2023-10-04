execute at @e[type=armor_stand,tag=repeating_stand] if score @s repeating.uuid_score = @e[type=armor_stand,tag=repeating_stand,limit=1,sort=nearest] repeating.uuid_score run tp @e[type=armor_stand,tag=repeating_stand,limit=1,sort=nearest,distance=999.9..1000.1] ~ ~ ~
execute if entity @s[predicate=repeating:holding_crossbow] at @s run function repeating:main
execute if entity @s[predicate=!repeating:holding_crossbow] run scoreboard players set @s arrows_left 0
advancement revoke @s only repeating:using_crossbow
scoreboard players set @s[scores={used_crossbow=1..}] used_crossbow 0

# execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:enchanted_book",Count:1b}},nbt={SelectedItem: {tag: {display: {Lore: ['[{"text": "Repeating", "color": "gray", "italic": false}]']}}}},nbt=!{SelectedItem: {tag: {Enchantments: [{}]}}}] run item modify entity @s weapon.mainhand repeating:remove_text
# execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:enchanted_book",Count:1b}},nbt={Inventory: [{Slot: -106b, tag: {display: {Lore: ['[{"text": "Repeating", "color": "gray", "italic": false}]']}}}]},nbt=!{Inventory: [{Slot: -106b, tag: {Enchantments: [{}]}}]}] run item modify entity @s weapon.offhand repeating:remove_text