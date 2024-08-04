#As: the player who clicks onto the sign
#At: the sign
#Returns: fttsign_signx,fttsign_signy,fttsign_signz,fttsign_mode

scoreboard players set @s fttsign_mode 0
execute if block ~ ~ ~ #minecraft:signs[facing=east] run scoreboard players set @s fttsign_mode 1
execute if block ~ ~ ~ #minecraft:signs[facing=west] run scoreboard players set @s fttsign_mode 2
execute if block ~ ~ ~ #minecraft:signs[facing=south] run scoreboard players set @s fttsign_mode 3
execute if block ~ ~ ~ #minecraft:signs[facing=north] run scoreboard players set @s fttsign_mode 4

execute unless score @s fttsign_mode matches 1..4 run scoreboard players reset @s fttsign_signx
execute unless score @s fttsign_mode matches 1..4 run scoreboard players reset @s fttsign_signy
execute unless score @s fttsign_mode matches 1..4 run scoreboard players reset @s fttsign_signz

execute if score @s fttsign_mode matches 1..4 store result score @s fttsign_signx run data get block ~ ~ ~ x 1000
execute if score @s fttsign_mode matches 1..4 store result score @s fttsign_signy run data get block ~ ~ ~ y 1000
execute if score @s fttsign_mode matches 1..4 store result score @s fttsign_signz run data get block ~ ~ ~ z 1000

# fttsign_const0 = sign width
# fttsign_const1 = sign width / 2
# fttsign_const2 = sign thickness
scoreboard players set @s fttsign_const0 1000
scoreboard players set @s fttsign_const1 500
scoreboard players set @s fttsign_const2 105
execute if score @s fttsign_mode matches 1 run scoreboard players operation @s fttsign_signx += @s fttsign_const2
execute if score @s fttsign_mode matches 1 run scoreboard players operation @s fttsign_signy += @s fttsign_const1
execute if score @s fttsign_mode matches 1 run scoreboard players operation @s fttsign_signz += @s fttsign_const1
execute if score @s fttsign_mode matches 2 run scoreboard players operation @s fttsign_signx += @s fttsign_const0
execute if score @s fttsign_mode matches 2 run scoreboard players operation @s fttsign_signx -= @s fttsign_const2
execute if score @s fttsign_mode matches 2 run scoreboard players operation @s fttsign_signy += @s fttsign_const1
execute if score @s fttsign_mode matches 2 run scoreboard players operation @s fttsign_signz += @s fttsign_const1
execute if score @s fttsign_mode matches 3 run scoreboard players operation @s fttsign_signx += @s fttsign_const1
execute if score @s fttsign_mode matches 3 run scoreboard players operation @s fttsign_signy += @s fttsign_const1
execute if score @s fttsign_mode matches 3 run scoreboard players operation @s fttsign_signz += @s fttsign_const2
execute if score @s fttsign_mode matches 4 run scoreboard players operation @s fttsign_signx += @s fttsign_const1
execute if score @s fttsign_mode matches 4 run scoreboard players operation @s fttsign_signy += @s fttsign_const1
execute if score @s fttsign_mode matches 4 run scoreboard players operation @s fttsign_signz += @s fttsign_const0
execute if score @s fttsign_mode matches 4 run scoreboard players operation @s fttsign_signz -= @s fttsign_const2
scoreboard players reset @s fttsign_const0
scoreboard players reset @s fttsign_const1
scoreboard players reset @s fttsign_const2

# If player is clicking on the sign from the opposite direction, then do not activate the sign function.
execute if score @s fttsign_mode matches 1 if score @s fttsign_player0x <= @s fttsign_signx run scoreboard players set @s fttsign_mode 0
execute if score @s fttsign_mode matches 2 if score @s fttsign_player0x >= @s fttsign_signx run scoreboard players set @s fttsign_mode 0
execute if score @s fttsign_mode matches 3 if score @s fttsign_player0z <= @s fttsign_signz run scoreboard players set @s fttsign_mode 0
execute if score @s fttsign_mode matches 4 if score @s fttsign_player0z >= @s fttsign_signz run scoreboard players set @s fttsign_mode 0

# Do not perform the calculation on the next steps if player direction parallels to the sign, as it may cause the division-by-zero problem.
execute if score @s fttsign_mode matches 1..2 if score @s fttsign_player0x = @s fttsign_player1x run scoreboard players set @s fttsign_mode 0
execute if score @s fttsign_mode matches 3..4 if score @s fttsign_player0z = @s fttsign_player1z run scoreboard players set @s fttsign_mode 0
