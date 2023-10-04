execute at @e[type=item,predicate=devotion:devoted_item] as @a run scoreboard players operation @s uuid_score -= @e[type=item,predicate=devotion:devoted_item,limit=1,distance=0] uuid_score

execute as @a store result score @s uuid_difference run scoreboard players get @s uuid_score

execute as @a store result score @s uuid_score run data get entity @s UUID.[0]

execute as @a[scores={uuid_difference=0}] run say hi