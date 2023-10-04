# Put a player's UUID into data storage

# execute store result storage devotion:uuid_storage Item.tag.Devotee int 1000000000 run data get entity @p UUID.[0] 1

# execute store result storage devotion:uuid_storage Item.tag.Devotee int 1 run data get entity @p UUID.[0] 1

# execute unless data entity @s Item.tag.Devotee store result entity @s Item.tag.Devotee int 1 run data get entity @p UUID.[0] 1

# execute if data entity @s Item.tag.Devotee store result score @s uuid_score run data get entity @s Item.tag.Devotee 1

# execute store result score @s uuid_score run data get entity @p UUID.[0] 1



# Show when an item is devoted for the first time

# execute at @s unless data entity @s Item.tag.Devotee run particle enchant ~ ~ ~ 0.125 0.125 0.125 1 10
# execute at @s unless data entity @s Item.tag.Devotee run particle end_rod ~ ~ ~ 0.125 0.125 0.125 0.05 5

# execute at @p unless data entity @s Item.tag.Devotee run particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 10
# execute at @p unless data entity @s Item.tag.Devotee run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 5

# execute at @s unless data entity @s Item.tag.Devotee run playsound minecraft:entity.ender_eye.launch ambient @a ~ ~ ~ 1 0.875
# execute at @s unless data entity @s Item.tag.Devotee run playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 1 1.125
# execute at @s unless data entity @s Item.tag.Devotee run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 1.125

# Put the original player's UUID into the item as a tag

# execute store result entity @s Item.tag.Devotee int 1000000000 run data get entity @p UUID.[0] 1

# execute store result entity @s Item.tag.Devotee int 1 run data get entity @p UUID.[0] 1


# Store the uuid storage as scores for both the player and the item

# execute store result score @p uuid_score run data get entity @p UUID.[0]

# execute store result score @p uuid_score run data get storage devotion:uuid_storage Item.tag.Devotee 1

# execute as @e[type=item,limit=1,sort=nearest] store result score @s uuid_score run data get entity @p UUID.[0] 1

# execute as @e[type=item,limit=1,sort=nearest] store result score @s uuid_score run data get storage devotion:uuid_storage Item.tag.Devotee 1


# Give the item a custom tag saying it's devoted

# execute as @e[type=item,limit=1,sort=nearest] run data modify entity @s Item.tag.DevotedItem set value 1b


# Get rid of the storage

# data remove storage devotion:uuid_storage Item.tag.Devotee


# execute as @a store result score @s uuid_score run data get entity @s UUID.[0]

# say store

execute at @s unless data entity @s Item.tag.Devotee run particle enchant ~ ~ ~ 0.125 0.125 0.125 1 10
# execute at @s unless data entity @s Item.tag.Devotee run particle end_rod ~ ~ ~ 0.125 0.125 0.125 0.05 5

execute at @p unless data entity @s Item.tag.Devotee run particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 10
# execute at @p unless data entity @s Item.tag.Devotee run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 5

# execute at @s unless data entity @s Item.tag.Devotee run playsound minecraft:item.devoted_item_binds ambient @a ~ ~ ~ 0.25 1.125
# execute at @s unless data entity @s Item.tag.Devotee run playsound minecraft:item.devoted_item_binds_2 ambient @a ~ ~ ~ 0.5 0.75

execute at @s unless data entity @s Item.tag.Devotee run playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 1 1
execute at @s unless data entity @s Item.tag.Devotee run playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1 1

# execute at @s unless data entity @s Item.tag.Devotee run playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 1 1.125
# execute at @s unless data entity @s Item.tag.Devotee run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 1.125



execute if data entity @s Item.tag.Devotee store result score @s uuid_score run data get entity @s Item.tag.Devotee 1

# execute if data entity @s Item.tag.Devotee run say not first time



# execute unless data entity @s Item.tag.Devotee run say first time

execute unless data entity @s Item.tag.Devotee store result entity @s Item.tag.Devotee int 1 run data get entity @p UUID.[0] 1

execute store result score @s uuid_score run data get entity @s Item.tag.Devotee



# tellraw @a {"score":{"name":"@s","objective":"uuid_score"}}


data modify entity @s Item.tag.DevotedItem set value 1b

tag @s add devoted_tag