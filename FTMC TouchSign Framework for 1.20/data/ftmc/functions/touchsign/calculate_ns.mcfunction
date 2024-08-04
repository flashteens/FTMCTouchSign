#As: the player who clicks onto the sign
#At: the sign
#Input: fttsign_player0x,fttsign_player0y,fttsign_player0z
#Input: fttsign_player1x,fttsign_player1y,fttsign_player1z
#Input: fttsign_signx,fttsign_signy,fttsign_signz
#Input: fttsign_mode (3 or 4)
#Modifies: fttsign_player2*, fttsign_norm2*
#Modifies: fttsign_reg* (will be cleared before this function completes)
#Modifies: fttsign_mode (will be set to 0 when the result is out of range; otherwise unchanged)
#Returns: fttsign_touchx,fttsign_touchy


# Calculate fttsign_player2[xyz], which is the clicking position relative to fttsign_sign[xyz].
# z2 = fttsign_signx
# x2 = (z2 - z0) * (x1 - x0) / (z1 - z0) + x0
# y2 = (z2 - z0) * (y1 - y0) / (z1 - z0) + y0

scoreboard players operation @s fttsign_player2z = @s fttsign_signz
scoreboard players set @s fttsign_norm2z 0

scoreboard players operation @s fttsign_player2x = @s fttsign_player2z
scoreboard players operation @s fttsign_player2x -= @s fttsign_player0z
scoreboard players operation @s fttsign_reg0 = @s fttsign_player1x
scoreboard players operation @s fttsign_reg0 -= @s fttsign_player0x
scoreboard players operation @s fttsign_player2x *= @s fttsign_reg0
scoreboard players operation @s fttsign_reg0 = @s fttsign_player1z
scoreboard players operation @s fttsign_reg0 -= @s fttsign_player0z
scoreboard players operation @s fttsign_player2x /= @s fttsign_reg0
scoreboard players operation @s fttsign_player2x += @s fttsign_player0x

scoreboard players operation @s fttsign_player2y = @s fttsign_player2z
scoreboard players operation @s fttsign_player2y -= @s fttsign_player0z
scoreboard players operation @s fttsign_reg0 = @s fttsign_player1y
scoreboard players operation @s fttsign_reg0 -= @s fttsign_player0y
scoreboard players operation @s fttsign_player2y *= @s fttsign_reg0
scoreboard players operation @s fttsign_reg0 = @s fttsign_player1z
scoreboard players operation @s fttsign_reg0 -= @s fttsign_player0z
scoreboard players operation @s fttsign_player2y /= @s fttsign_reg0
scoreboard players operation @s fttsign_player2y += @s fttsign_player0y

scoreboard players operation @s fttsign_norm2x = @s fttsign_player2x
scoreboard players operation @s fttsign_norm2x -= @s fttsign_signx
scoreboard players operation @s fttsign_norm2y = @s fttsign_player2y
scoreboard players operation @s fttsign_norm2y -= @s fttsign_signy

scoreboard players reset @s fttsign_reg0


# Obtain the results by 3D-to-2D projection.
scoreboard players operation @s fttsign_touchx = @s fttsign_norm2x
scoreboard players operation @s fttsign_touchy = @s fttsign_norm2y
scoreboard players set @s fttsign_reg0 -1
execute if score @s fttsign_mode matches 4 run scoreboard players operation @s fttsign_touchx *= @s fttsign_reg0
scoreboard players operation @s fttsign_touchy *= @s fttsign_reg0
scoreboard players reset @s fttsign_reg0

# Returns an empty result if it is out of range.
function ftmc:touchsign/validate_result_range
