execute if score zeus.major load.status matches 1 if score zeus.minor load.status matches 2.. run function chronus:v1.0/load/enumerate

execute unless score zeus.major load.status matches 1 run tellraw @a "Failed to load Chronus, expected Zeus v1.2"
execute if score zeus.major load.status matches 1 unless score zeus.minor load.status matches 2.. run tellraw @a "Failed to load Chronus, expected Zeus v1.2"
