#As: the player who clicks onto the sign
#At: the sign

# Prevent any duplicate TouchSignTempPos entities that affects the calculation below.
kill @e[type=armor_stand,tag=TouchSignTempPos]

# Summon two temporary armor stands around the player to calculate the player direction vector.
execute at @s anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Invisible:1b,Tags:["TouchSignTempPos","Eyes"]}
execute at @s anchored eyes positioned ^ ^ ^-1 run summon armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Invisible:1b,Tags:["TouchSignTempPos","BehindEyes"]}

# Specify scoreboard values to be the player's XYZ coordinate value.
execute store result score @s fttsign_player0x run data get entity @e[type=armor_stand,tag=TouchSignTempPos,tag=Eyes,limit=1] Pos[0] 1000
execute store result score @s fttsign_player0y run data get entity @e[type=armor_stand,tag=TouchSignTempPos,tag=Eyes,limit=1] Pos[1] 1000
execute store result score @s fttsign_player0z run data get entity @e[type=armor_stand,tag=TouchSignTempPos,tag=Eyes,limit=1] Pos[2] 1000
execute store result score @s fttsign_player1x run data get entity @e[type=armor_stand,tag=TouchSignTempPos,tag=BehindEyes,limit=1] Pos[0] 1000
execute store result score @s fttsign_player1y run data get entity @e[type=armor_stand,tag=TouchSignTempPos,tag=BehindEyes,limit=1] Pos[1] 1000
execute store result score @s fttsign_player1z run data get entity @e[type=armor_stand,tag=TouchSignTempPos,tag=BehindEyes,limit=1] Pos[2] 1000

# Apply a small offset to ensure that the resulting Y-coordinate is aligned at center.
scoreboard players set @s fttsign_const0 -20
scoreboard players operation @s fttsign_player0y += @s fttsign_const0
scoreboard players operation @s fttsign_player1y += @s fttsign_const0
scoreboard players reset @s fttsign_const0

# Obtain the position and direction of the sign.
function ftmc:touchsign/impl_detect

execute if score @s fttsign_mode matches 1 run function ftmc:touchsign/calculate_ew
execute if score @s fttsign_mode matches 2 run function ftmc:touchsign/calculate_ew
execute if score @s fttsign_mode matches 3 run function ftmc:touchsign/calculate_ns
execute if score @s fttsign_mode matches 4 run function ftmc:touchsign/calculate_ns

execute unless score @s fttsign_mode matches 1..4 run function ftmc:touchsign/calculate_onerror

# Finally remove the temporary armor stand.
kill @e[type=armor_stand,tag=TouchSignTempPos]
