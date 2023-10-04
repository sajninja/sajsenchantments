# uuid scores
# execute as @a store result score @s uuid_score run data get entity @s UUID.[0]

schedule function devotion:tick 1t
execute as @a store result score @s posy run data get entity @s Pos[1] 1

# use the main function
execute as @e[type=item,predicate=devotion:devoted_item] at @s run function devotion:main

# reset stuff
scoreboard players set @a[scores={devotion_deaths=1..},nbt=!{Health: 0f}] devotion_deaths 0