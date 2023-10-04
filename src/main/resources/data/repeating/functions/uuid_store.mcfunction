# say store
execute store result score @s repeating.uuid_score run data get entity @s UUID.[0]
execute store result score @e[type=armor_stand,tag=repeating_stand,distance=..0.01,limit=1,sort=nearest] repeating.uuid_score run data get entity @s UUID.[0]