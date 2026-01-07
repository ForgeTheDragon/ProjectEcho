# Увеличение здоровья игрока на одно сердце навсегда, если использовано не более 10 хрустальных сердец
execute as @s[type=player] if score @s crystal_hearts_used matches 0 run attribute @s minecraft:max_health base set 22
execute as @s[type=player] if score @s crystal_hearts_used matches 1 run attribute @s minecraft:max_health base set 24
execute as @s[type=player] if score @s crystal_hearts_used matches 2 run attribute @s minecraft:max_health base set 26
execute as @s[type=player] if score @s crystal_hearts_used matches 3 run attribute @s minecraft:max_health base set 28
execute as @s[type=player] if score @s crystal_hearts_used matches 4 run attribute @s minecraft:max_health base set 30
execute as @s[type=player] if score @s crystal_hearts_used matches 5 run attribute @s minecraft:max_health base set 32
execute as @s[type=player] if score @s crystal_hearts_used matches 6 run attribute @s minecraft:max_health base set 34
execute as @s[type=player] if score @s crystal_hearts_used matches 7 run attribute @s minecraft:max_health base set 36
execute as @s[type=player] if score @s crystal_hearts_used matches 8 run attribute @s minecraft:max_health base set 38
execute as @s[type=player] if score @s crystal_hearts_used matches 9 run attribute @s minecraft:max_health base set 40

# Спавн частиц при потреблении сердца
execute as @s[type=player] if score @s crystal_hearts_used matches 0..9 run particle minecraft:heart ~ ~1 ~ 0.3 0.3 0.3 0.05 5 force @s

# Увеличение таблицы счёта использованных сердец
execute as @s[type=player] if score @s crystal_hearts_used matches 0..9 run scoreboard players add @s crystal_hearts_used 1

# Сбрасываем достижение для повторного использования
advancement revoke @s only project_echo:using_crystal_heart