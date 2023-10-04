particle soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0 1

execute store result score @s soul_brand.modulus run scoreboard players get @s soul_brand.ticks_burning

scoreboard players operation @s soul_brand.modulus %= soul_brand.constant_50 soul_brand.constant

execute if entity @s[scores={soul_brand.modulus=0}] run function soul_brand:branded_entities/burn

scoreboard players remove @s soul_brand.ticks_burning 1