schedule clear hera:v1.2/tick

execute if score hera.major load.status matches 2 if score hera.minor load.status matches 1 run function hera:v1.2/init
