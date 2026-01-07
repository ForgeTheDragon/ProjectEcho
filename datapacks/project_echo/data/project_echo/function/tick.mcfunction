# Таймеры
scoreboard players remove $projectecho second 1

execute if score $projectecho second matches ..0 run function project_echo:second
execute if score $projectecho second matches ..0 run scoreboard players set $projectecho second 20

# Эндер
# execute as @e[gamemode=!spectator] at @s if predicate project_echo:enderite_armor_equiped run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.9 0.5 0.0001 1 normal