execute if score athena load.status matches 1 run scoreboard players set odysseus load.status 1

execute unless score athena load.status matches 1 run tellraw @a "Failed to load Demeter, missing Athena"

execute if score odysseus load.status matches 1 run function odysseus:init
execute unless score odysseus load.status matches 1 run schedule clear odysseus:main
