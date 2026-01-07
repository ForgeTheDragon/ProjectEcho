# Инициализация (если датапак впервые запущен)
scoreboard objectives add init dummy
execute unless score $projectecho init matches 1 run function project_echo:init