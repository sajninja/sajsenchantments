execute store result storage uuid_storage Item.tag.Devotee int 1000000000 run data get entity @s Item.tag.Devotee

execute store result score @s uuid_score run data get storage devotion:uuid_storage Item.tag.Devotee 1

# execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] uuid_score = @s uuid_score run say void safe
# execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_nether] uuid_score = @s uuid_score run say void safe
# execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_end] uuid_score = @s uuid_score run say void safe
execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] uuid_score = @s uuid_score run data merge entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] {Invulnerable:1b}
execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_nether] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_nether] uuid_score = @s uuid_score run data merge entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] {Invulnerable:1b}
execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_end] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_end] uuid_score = @s uuid_score run data merge entity @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] {Invulnerable:1b}

execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] uuid_score = @s uuid_score run tp @s ~ -100 ~
execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_nether] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_nether] uuid_score = @s uuid_score run tp @s ~ -30 ~
execute as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_end] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_end] uuid_score = @s uuid_score run tp @s ~ -30 ~
# execute as @a[predicate=devotion:in_end] at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_end] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_end] uuid_score = @s uuid_score run say tp @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] ~ -40 ~

execute as @e[type=item,predicate=devotion:devoted_item] store result score @s posy run data get entity @s Pos[1] 1

# say void safe

data merge entity @s {Invulnerable:1b}