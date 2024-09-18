# Highlight the nearest horse
effect give @s minecraft:glowing 1 0 true 

# Get the horse's health
execute as @s store result score @p gg.health_base run data get entity @s Health 50
scoreboard players operation @p gg.health = @p gg.health_base
scoreboard players operation @p gg.health /= @p gg.percent

# Get the horse's speed
execute as @s store result score @p gg.speed run data get entity @s attributes[{id:"minecraft:generic.movement_speed"}].base 4216
scoreboard players operation @p gg.speed_modulus = @p gg.speed
scoreboard players operation @p gg.speed_modulus %= @p gg.percent
scoreboard players operation @p gg.temp = @p gg.speed
scoreboard players operation @p gg.temp /= @p gg.percent
scoreboard players operation @p gg.speed = @p gg.temp

# Get the horse's jump strength
execute as @s store result score @p gg.jump run data get entity @s attributes[{id:"minecraft:generic.jump_strength"}].base 5520.0
scoreboard players operation @p gg.jump_modulus = @p gg.jump
scoreboard players operation @p gg.jump_modulus /= @p gg.percent

scoreboard players operation @p gg.temp = @p gg.jump
scoreboard players operation @p gg.temp /= @p gg.permille
scoreboard players operation @p gg.jump = @p gg.temp