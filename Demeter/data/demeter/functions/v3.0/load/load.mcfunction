execute if score hera.major load.status matches 1 if score hera.minor load.status matches 2.. run function demeter:v3.0/load/enumerate

execute unless score hera.major load.status matches 1 run tellraw @a "Failed to load Demeter, expected Hera v1.2"
execute if score hera.major load.status matches 1 unless score hera.minor load.status matches 2.. run tellraw @a "Failed to load Demeter, expected Hera v1.2"
