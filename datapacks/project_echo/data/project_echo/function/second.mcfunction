### Таймеры
execute if score $projectecho second matches ..0 run scoreboard players remove $projectecho minute 1
execute if score $projectecho minute matches ..0 run function project_echo:minute
execute if score $projectecho minute matches ..0 run scoreboard players set $projectecho minute 60

# execute as @a unless score @s player_joined matches 0 run advancement grant @s only project_echo:project_echo/project_echo
# execute as @a unless score @s player_joined matches 1 run scoreboard players set @s player_joined 1


### Пламенное ядро

# Поджигает блоки на которых лежит Пламенное ядро
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:rabbit_foot[minecraft:custom_data~{flame_core:1b}] unless block ~ ~-1 ~ minecraft:water unless block ~ ~-1 ~ minecraft:lava if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire

# Пламенное ядро наносит урон игроку, если оно находится у него в инвентаре
execute as @e[gamemode=!creative,gamemode=!spectator] if predicate project_echo:has_flame_core run title @s actionbar {"translate":"actionbar.project_echo.flame_core","color":"red"}
execute as @e[gamemode=!creative,gamemode=!spectator] if predicate project_echo:has_flame_core run damage @s 1 minecraft:on_fire
execute as @e[gamemode=!spectator] if predicate project_echo:has_flame_core at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.05 50 force @s

# Пламенное ядро наносит урон мобу, если оно находится у него в руке
execute as @e[type=!player,type=!item] if predicate project_echo:has_flame_core run damage @s 1 minecraft:on_fire
execute as @e[type=!player,type=!item] if predicate project_echo:has_flame_core at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.05 50