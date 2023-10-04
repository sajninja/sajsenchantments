# keep it alive long enough to be saved
data merge entity @s {Invulnerable:1b}



# Play sounds where it was before

# execute as @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] at @s run playsound minecraft:entity.ender_eye.launch ambient @a ~ ~ ~ 1 1.125

execute as @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 10

# execute as @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] at @s run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 5


# Modify the item

# execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] run summon armor_stand ~ ~ ~ {Tags:["devotion_stand"],Invulnerable:1b}

# execute as @e[type=armor_stand,tag=devotion_stand,limit=1,sort=nearest,distance=0] run data modify entity @s HandItems.[0] set from entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] Item

# item modify entity @e[type=armor_stand,tag=devotion_stand,limit=1,sort=nearest,distance=0] weapon.mainhand devotion:damage

# execute as @a at @e[type=armor_stand,tag=devotion_stand,limit=1,sort=nearest,distance=0] run data modify entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] Item set from entity @e[type=armor_stand,tag=devotion_stand,limit=1,sort=nearest,distance=0] HandItems.[0]

# kill @e[type=armor_stand,tag=devotion_stand]


# Teleport the item and play sounds

#execute as @a at @e[type=item,limit=1,nbt={Item:{tag:{DevotedItem:1b}}}] if score @e[type=item,limit=1,nbt={Item:{tag:{DevotedItem:1b}}}] uuid_score = @s uuid_score run tp @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] @s[nbt=!{Health:0f}]

data merge entity @s {PickupDelay:1}

execute as @a if score @e[type=item,limit=1,distance=0,predicate=devotion:devoted_item] uuid_score = @s uuid_score run function devotion:save_teleport

# execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] uuid_score = @s uuid_score run function devotion:save_teleport

#execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] uuid_score = @s uuid_score run say playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 1 1.125

#execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] uuid_score = @s uuid_score run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0.5 10

#execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] uuid_score = @s uuid_score run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 5

#data modify entity @s Item.tag.DevotedDamage set value 1b

#data modify entity @s Item.tag.Damage append valsue 1

# execute as @e[type=item,tag=!devoted_item_unsavable,predicate=devotion:devoted_item] as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] uuid_score = @s uuid_score run say hi

# execute as @e[scores={uuid_score=..-1}] run scoreboard players operation @s uuid_score *= -1 -1

# execute as @a run function devotion:find_difference

# execute as @a run scoreboard players operation @s uuid_score -= @e[type=item,predicate=devotion:devoted_item,limit=1,distance=0] uuid_score

# execute as @a store result score @s uuid_difference run scoreboard players get @s uuid_score