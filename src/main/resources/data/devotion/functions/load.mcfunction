scoreboard objectives add uuid_score dummy
execute as @a store result score @s uuid_score run data get entity @s UUID.[0]

scoreboard objectives add uuid_difference dummy

scoreboard objectives add posy dummy

scoreboard objectives add devotion_deaths deathCount

scoreboard objectives add devoted_damage dummy

scoreboard objectives add dropped_devotion_book minecraft.dropped:minecraft.enchanted_book

scoreboard objectives add devotion_xp dummy

scoreboard objectives add -1 dummy
scoreboard players set -1 -1 -1

scoreboard objectives add devoted_items_returning dummy
scoreboard objectives add devoted_items_failing dummy

schedule function devotion:tick 1t