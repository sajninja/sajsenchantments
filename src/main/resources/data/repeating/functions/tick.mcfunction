schedule function repeating:tick 1t
execute as @a run function repeating:player_main
# execute at @a as @e[type=item,predicate=repeating:enchanting/repeating_enchanted,limit=1,sort=nearest] at @s run function repeating:enchanting/wait
# execute unless entity @e[type=item,predicate=repeating:enchanting/repeating_enchanted] run function repeating:no_book