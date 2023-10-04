execute as @e[tag=soul_brand_init] at @s run function soul_brand:branded_entities/init
execute as @e[scores={soul_brand.ticks_burning=1..}] at @s run function soul_brand:branded_entities/burning
execute as @a[scores={soul_brand.deaths=1..}] run function soul_brand:died

schedule function soul_brand:tick 1t