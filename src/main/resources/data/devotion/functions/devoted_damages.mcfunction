# kill items if they're broken

# store their damages as a score

execute store result score @s devoted_damage run data get entity @s Item.tag.Damage

# wood tools

execute as @s[nbt={Item: {id: "minecraft:wooden_sword"}},scores={devoted_damage=42..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:wooden_pickaxe"}},scores={devoted_damage=42..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:wooden_axe"}},scores={devoted_damage=42..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:wooden_shovel"}},scores={devoted_damage=42..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:wooden_hoe"}},scores={devoted_damage=42..}] at @s run tag @s add devoted_item_unsavable

# stone tools

execute as @s[nbt={Item: {id: "minecraft:stone_sword"}},scores={devoted_damage=96..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:stone_pickaxe"}},scores={devoted_damage=96..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:stone_axe"}},scores={devoted_damage=96..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:stone_shovel"}},scores={devoted_damage=96..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:stone_hoe"}},scores={devoted_damage=96..}] at @s run tag @s add devoted_item_unsavable

# iron tools

execute as @s[nbt={Item: {id: "minecraft:iron_sword"}},scores={devoted_damage=186..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:iron_pickaxe"}},scores={devoted_damage=186..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:iron_axe"}},scores={devoted_damage=186..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:iron_shovel"}},scores={devoted_damage=186..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:iron_hoe"}},scores={devoted_damage=186..}] at @s run tag @s add devoted_item_unsavable

# golden tools

execute as @s[nbt={Item: {id: "minecraft:golden_sword"}},scores={devoted_damage=24..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:golden_pickaxe"}},scores={devoted_damage=24..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:golden_axe"}},scores={devoted_damage=24..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:golden_shovel"}},scores={devoted_damage=24..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:golden_hoe"}},scores={devoted_damage=24..}] at @s run tag @s add devoted_item_unsavable

# diamond tools

execute as @s[nbt={Item: {id: "minecraft:diamond_sword"}},scores={devoted_damage=1170..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:diamond_pickaxe"}},scores={devoted_damage=1170..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:diamond_axe"}},scores={devoted_damage=1170..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:diamond_shovel"}},scores={devoted_damage=1170..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:diamond_hoe"}},scores={devoted_damage=1170..}] at @s run tag @s add devoted_item_unsavable

# netherite tools

execute as @s[nbt={Item: {id: "minecraft:netherite_sword"}},scores={devoted_damage=1521..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:netherite_pickaxe"}},scores={devoted_damage=1521..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:netherite_axe"}},scores={devoted_damage=1521..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:netherite_shovel"}},scores={devoted_damage=1521..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:netherite_hoe"}},scores={devoted_damage=1521..}] at @s run tag @s add devoted_item_unsavable

# leather armor

execute as @s[nbt={Item: {id: "minecraft:leather_helmet"}},scores={devoted_damage=39..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:leather_chestplate"}},scores={devoted_damage=60..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:leather_leggings"}},scores={devoted_damage=54..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:leather_boots"}},scores={devoted_damage=48..}] at @s run tag @s add devoted_item_unsavable

# chainmail armor

execute as @s[nbt={Item: {id: "minecraft:chainmail_helmet"}},scores={devoted_damage=123..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:chainmail_chestplate"}},scores={devoted_damage=180..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:chainmail_leggings"}},scores={devoted_damage=168..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:chainmail_boots"}},scores={devoted_damage=144..}] at @s run tag @s add devoted_item_unsavable

# golden armor

execute as @s[nbt={Item: {id: "minecraft:golden_helmet"}},scores={devoted_damage=57..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:golden_chestplate"}},scores={devoted_damage=84..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:golden_leggings"}},scores={devoted_damage=78..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:golden_boots"}},scores={devoted_damage=66..}] at @s run tag @s add devoted_item_unsavable

# iron armor

execute as @s[nbt={Item: {id: "minecraft:iron_helmet"}},scores={devoted_damage=123..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:iron_chestplate"}},scores={devoted_damage=180..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:iron_leggings"}},scores={devoted_damage=168..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:iron_boots"}},scores={devoted_damage=144..}] at @s run tag @s add devoted_item_unsavable

# diamond armor

execute as @s[nbt={Item: {id: "minecraft:diamond_helmet"}},scores={devoted_damage=270..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:diamond_chestplate"}},scores={devoted_damage=396..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:diamond_leggings"}},scores={devoted_damage=369..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:diamond_boots"}},scores={devoted_damage=321..}] at @s run tag @s add devoted_item_unsavable

# netherite armor

execute as @s[nbt={Item: {id: "minecraft:netherite_helmet"}},scores={devoted_damage=303..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:netherite_chestplate"}},scores={devoted_damage=444..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:netherite_leggings"}},scores={devoted_damage=414..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:netherite_boots"}},scores={devoted_damage=360..}] at @s run tag @s add devoted_item_unsavable

# other tools

execute as @s[nbt={Item: {id: "minecraft:turtle_helmet"}},scores={devoted_damage=204..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:bow"}},scores={devoted_damage=288..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:crossbow"}},scores={devoted_damage=348..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:trident"}},scores={devoted_damage=186..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:shield"}},scores={devoted_damage=252..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:fishing_rod"}},scores={devoted_damage=48..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:carrot_on_a_stick"}},scores={devoted_damage=18..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:warped_fungus_on_a_stick"}},scores={devoted_damage=75..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:flint_and_steel"}},scores={devoted_damage=48..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:shears"}},scores={devoted_damage=177..}] at @s run tag @s add devoted_item_unsavable
execute as @s[nbt={Item: {id: "minecraft:elytra"}},scores={devoted_damage=324..}] at @s run tag @s add devoted_item_unsavable