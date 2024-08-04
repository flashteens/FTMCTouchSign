#As/At: don't care
#Input: fttsign_touchx,fttsign_touchy
#Modifies: fttsign_touchx,fttsign_touchy (will be cleared when one of the values are out of range; otherwise unchanged)
#Modifies: fttsign_mode (will be set to 0 when out of range; otherwise unchanged)

# fttsign_reg0 is an out-of-range indicator.
scoreboard players reset @s fttsign_reg0
execute unless score @s fttsign_touchx matches -500..500 run scoreboard players set @s fttsign_reg0 1
execute unless score @s fttsign_touchy matches -250..250 run scoreboard players set @s fttsign_reg0 1
execute if score @s fttsign_reg0 matches 1 run scoreboard players reset @s fttsign_touchx
execute if score @s fttsign_reg0 matches 1 run scoreboard players reset @s fttsign_touchy
execute if score @s fttsign_reg0 matches 1 run scoreboard players set @s fttsign_mode 0
scoreboard players reset @s fttsign_reg0
