# detect when the player is holding the detector item
scoreboard players set @a gg.in_hand 0
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:custom_model_data":3901}}}] at @s run scoreboard players set @s gg.in_hand 1

execute at @a[scores={gg.in_hand=1}] as @e[type=horse,distance=..5,sort=nearest,limit=1] if entity @s run function gg.detected_horse
execute at @a[scores={gg.in_hand=1}] unless entity @e[type=horse,distance=..5,sort=nearest,limit=1] run function gg.no_horse_detected 

execute at @a[scores={gg.in_hand=1}] run bossbar set gg.stats players @p
execute at @a[scores={gg.in_hand=1}] unless entity @e[type=horse,limit=1,sort=nearest,distance=..5] run bossbar set gg.stats name "Searching..."
execute at @a[scores={gg.in_hand=1}] if entity @e[type=horse,limit=1,sort=nearest,distance=..5] run bossbar set gg.stats name [{"color":"red","score":{"name":"@p","objective":"gg.health"}},{"text":"❤   ","color":"red"},{"text":">> ","color":"aqua"},{"color":"aqua","score":{"name":"@p","objective":"gg.speed"}},{"color":"aqua","text":"."},{"color":"aqua","score":{"name":"@p","objective":"gg.speed_modulus"}},{"color":"aqua","text":"b/s   "},{"text":"^^ ","color":"gold"},{"color":"gold","score":{"name":"@p","objective":"gg.jump"}},{"color":"gold","text":"."},{"color":"gold","score":{"name":"@p","objective":"gg.jump_modulus"}},{"color":"gold","text":" blocks   "}]

execute as @a[scores={gg.in_hand=0}] run bossbar set gg.stats players