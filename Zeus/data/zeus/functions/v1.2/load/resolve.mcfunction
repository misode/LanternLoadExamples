schedule clear zeus:v1.2/main

execute if score zeus.major load.status matches 1 if score zeus.minor load.status matches 2 run function zeus:v1.2/init
