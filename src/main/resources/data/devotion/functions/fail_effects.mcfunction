# execute at @s run playsound minecraft:item.devoted_return_fail ambient @a ~ ~ ~ 0.25 1
execute at @s run playsound minecraft:block.respawn_anchor.deplete ambient @a ~ ~ ~ 1 0.75
execute at @s run playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 1 0.25
# execute at @s run playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.amethyst_block.chime ambient @a ~ ~ ~ 1 0.875

execute at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0 5

scoreboard players set @s devoted_items_failing 0