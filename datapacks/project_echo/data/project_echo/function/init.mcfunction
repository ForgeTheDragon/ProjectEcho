# Регистрация таблиц счёта
scoreboard objectives add second dummy
scoreboard objectives add minute dummy
scoreboard objectives add crystal_hearts_used dummy
# scoreboard objectives add player_joined dummy

scoreboard players set $projectecho second 20
scoreboard players set $projectecho minute 60

# Завершение инициализации
tellraw @a {"text":"","extra":[{"text":"Project ","color":"gold"},{"text":"Echo ","color":"light_purple"},{"text":"» ","color":"aqua"},{"text":"Датапак инициализирован. Приятной игры."}]}
scoreboard players set $projectecho init 1