# see if it's viable to be saved
# execute as @e[type=item,predicate=devotion:devoted_item] at @s run function devotion:devoted_damages

# store the player data in the item
execute as @e[type=item,predicate=devotion:devoted_item,nbt={Age: 1s},tag=!devoted_tag,tag=!devotion_unsavable] at @s run function devotion:store

# get the y position of things
execute as @e[type=item,predicate=devotion:devoted_item] store result score @s posy run data get entity @s Pos[1] 1





# protect from death

# tp the item to the dead player
execute as @a[scores={devotion_deaths=1..},nbt={Health: 0f}] as @e[type=item,tag=!devotion_unsavable,predicate=devotion:devoted_item] at @s run function devotion:wait_teleport

# execute as @a[scores={devotion_deaths=1..},nbt={Health: 0f}] as @e[type=item,tag=!devoted_item_unsavable,predicate=devotion:devoted_item,scores={posy=..-130},predicate=devotion:in_overworld] at @s run function devotion:void_safe
# execute as @a[scores={devotion_deaths=1..},nbt={Health: 0f}] as @e[type=item,tag=!devoted_item_unsavable,predicate=devotion:devoted_item,scores={posy=..-66},predicate=devotion:in_nether] at @s run function devotion:void_safe
# execute as @a[scores={devotion_deaths=1..},nbt={Health: 0f}] as @e[type=item,tag=!devoted_item_unsavable,predicate=devotion:devoted_item,scores={posy=..-66},predicate=devotion:in_end] at @s run function devotion:void_safe

# tp the item when the player reespawns
execute as @a[scores={devotion_deaths=1..},nbt=!{Health: 0f}] as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,tag=!devotion_unsavable] at @s run function devotion:decide_savable



# different things that would delete the item

# protect from fire
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,nbt=!{Invulnerable: 1b},nbt=!{Fire: -1s}] at @s run function devotion:decide_savable

# protect from cacti
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,nbt=!{Invulnerable: 1b}] at @s if block ~0.5 ~ ~ cactus run function devotion:decide_savable
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,nbt=!{Invulnerable: 1b}] at @s if block ~-0.5 ~ ~ cactus run function devotion:decide_savable
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,nbt=!{Invulnerable: 1b}] at @s if block ~ ~0.5 ~ cactus run function devotion:decide_savable
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,nbt=!{Invulnerable: 1b}] at @s if block ~ ~-0.5 ~ cactus run function devotion:decide_savable
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,nbt=!{Invulnerable: 1b}] at @s if block ~ ~ ~0.5 cactus run function devotion:decide_savable
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,nbt=!{Invulnerable: 1b}] at @s if block ~ ~ ~-0.5 cactus run function devotion:decide_savable

# protect from despawning
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,nbt={Age: 5998s}] at @s run function devotion:decide_savable

# protect from void
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,scores={posy=..-120},predicate=devotion:in_overworld] at @s run function devotion:decide_savable
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,scores={posy=..-60},predicate=devotion:in_nether] at @s run function devotion:decide_savable
# execute as @e[type=item,tag=!devotion_savable_checked,predicate=devotion:devoted_item,scores={posy=..-60},predicate=devotion:in_end] at @s run function devotion:decide_savable

# actually make it return
execute as @s[tag=devotion_savable,tag=!devotion_unsavable] at @s run function devotion:save

# ACTUALLY actually make it return
execute as @a[scores={devoted_items_returning=1..,devotion_deaths=1..},nbt=!{Health: 0f}] run function devotion:return_effects
execute as @a[scores={devoted_items_failing=1..,devotion_deaths=1..},nbt=!{Health: 0f}] run function devotion:fail_effects