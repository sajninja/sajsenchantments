execute as @a if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] uuid_score = @s uuid_score run scoreboard players add @s devoted_items_returning 1

# execute at @s run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 5

# say save teleport

# execute as @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] run say save teleport

# tellraw @a {"score":{"name":"@p","objective":"devoted_items_returning"}}