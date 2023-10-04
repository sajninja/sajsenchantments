function devotion:store_wait

execute as @a[predicate=devotion:in_overworld,scores={posy=..-110}] at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_overworld] uuid_score = @s uuid_score run tp @s ~ -110 ~
execute as @a[predicate=devotion:in_nether,scores={posy=..-30}] at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_nether] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_nether] uuid_score = @s uuid_score run tp @s ~ -30 ~
execute as @a[predicate=devotion:in_end,scores={posy=..-30}] at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_end] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}},predicate=devotion:in_end] uuid_score = @s uuid_score run tp @s ~ -30 ~

execute as @e[type=item,nbt={Item:{tag:{DevotedItem:1b}}}] at @s as @a at @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] if score @e[type=item,limit=1,distance=0,nbt={Item:{tag:{DevotedItem:1b}}}] uuid_score = @s uuid_score run tp @e[type=item,limit=1,distance=0,tag=!devotion_unsavable,nbt={Item:{tag:{DevotedItem:1b}}}] @s

# execute as @s[type=item,tag=!devoted_item_unsavable,predicate=devotion:devoted_item,scores={posy=..-130},predicate=devotion:in_overworld] at @s run function devotion:void_safe
# execute as @s[type=item,tag=!devoted_item_unsavable,predicate=devotion:devoted_item,scores={posy=..-66},predicate=devotion:in_nether] at @s run function devotion:void_safe
# execute as @s[type=item,tag=!devoted_item_unsavable,predicate=devotion:devoted_item,scores={posy=..-66},predicate=devotion:in_end] at @s run function devotion:void_safe