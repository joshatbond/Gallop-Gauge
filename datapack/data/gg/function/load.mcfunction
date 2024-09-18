# Adding the scoreboards
scoreboard objectives add gg.in_hand dummy
scoreboard players set @a gg.in_hand 0

scoreboard objectives add gg.speed dummy
scoreboard objectives add gg.speed_modulus dummy

scoreboard objectives add gg.jump dummy
scoreboard objectives add gg.jump_modulus dummy

scoreboard objectives add gg.health_base dummy
scoreboard objectives add gg.health dummy

scoreboard objectives add gg.percent dummy
scoreboard players set @a gg.percent 100
scoreboard objectives add gg.permille dummy
scoreboard players set @a gg.permille 1000
scoreboard objectives add gg.temp dummy


# Initialize bossbar
bossbar add gg.stats "Horse Stats"

# Load message
tellraw @a [{"text":"'"},{"text":"Gallop Gauge","color":"dark_aqua","bold":true},{"text":"'"},{"text":" >> ","color":"white"},{"text":"[1.21.x]","color":"dark_green","bold":true},{"text":"      v1.0.1","color":"gray"}]
