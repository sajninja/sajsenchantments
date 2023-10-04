tag @s remove soul_brand_init
execute store result score @s soul_brand.ticks_burning on attacker run data get entity @s SelectedItem.tag.Enchantments.[{id:"sajsenchantments:soul_brand"}].lvl 100