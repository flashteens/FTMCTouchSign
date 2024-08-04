# A demonstration for how to use the TouchSign datapack

function ftmc:touchsign/click_handler


scoreboard players reset @s fttsign_reg0

execute if score @s fttsign_touchx matches -440..-387 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 1
execute if score @s fttsign_touchx matches -377..-324 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 3
execute if score @s fttsign_touchx matches -252..-199 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 6
execute if score @s fttsign_touchx matches -190..-137 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 8
execute if score @s fttsign_touchx matches -127..-74 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 10
execute if score @s fttsign_touchx matches -2..51 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 13
execute if score @s fttsign_touchx matches 60..113 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 15
execute if score @s fttsign_touchx matches 185..238 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 18
execute if score @s fttsign_touchx matches 248..301 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 20
execute if score @s fttsign_touchx matches 310..363 if score @s fttsign_touchy matches -115..-25 run scoreboard players set @s fttsign_reg0 22

execute if score @s fttsign_touchx matches -470..-417 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 0
execute if score @s fttsign_touchx matches -407..-354 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 2
execute if score @s fttsign_touchx matches -345..-292 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 4
execute if score @s fttsign_touchx matches -282..-229 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 5
execute if score @s fttsign_touchx matches -220..-167 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 7
execute if score @s fttsign_touchx matches -157..-104 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 9
execute if score @s fttsign_touchx matches -95..-42 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 11
execute if score @s fttsign_touchx matches -32..21 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 12
execute if score @s fttsign_touchx matches 30..83 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 14
execute if score @s fttsign_touchx matches 93..146 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 16
execute if score @s fttsign_touchx matches 155..208 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 17
execute if score @s fttsign_touchx matches 218..271 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 19
execute if score @s fttsign_touchx matches 280..333 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 21
execute if score @s fttsign_touchx matches 343..396 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 23
execute if score @s fttsign_touchx matches 405..458 if score @s fttsign_touchy matches -10..80 run scoreboard players set @s fttsign_reg0 24

execute if score @s fttsign_reg0 matches 0 run playsound minecraft:block.note_block.bass block @a ~ ~ ~ 3 1.4142
execute if score @s fttsign_reg0 matches 1 run playsound minecraft:block.note_block.bass block @a ~ ~ ~ 3 1.4983
execute if score @s fttsign_reg0 matches 2 run playsound minecraft:block.note_block.bass block @a ~ ~ ~ 3 1.5874
execute if score @s fttsign_reg0 matches 3 run playsound minecraft:block.note_block.bass block @a ~ ~ ~ 3 1.6818
execute if score @s fttsign_reg0 matches 4 run playsound minecraft:block.note_block.bass block @a ~ ~ ~ 3 1.7818
execute if score @s fttsign_reg0 matches 5 run playsound minecraft:block.note_block.bass block @a ~ ~ ~ 3 1.8877
execute if score @s fttsign_reg0 matches 6 run playsound minecraft:block.note_block.bass block @a ~ ~ ~ 0.5 2.0000

execute if score @s fttsign_reg0 matches 6 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.5000
execute if score @s fttsign_reg0 matches 7 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.5297
execute if score @s fttsign_reg0 matches 8 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.5612
execute if score @s fttsign_reg0 matches 9 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.5946
execute if score @s fttsign_reg0 matches 10 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.6300
execute if score @s fttsign_reg0 matches 11 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.6674
execute if score @s fttsign_reg0 matches 12 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.7071
execute if score @s fttsign_reg0 matches 13 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.7492
execute if score @s fttsign_reg0 matches 14 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.7937
execute if score @s fttsign_reg0 matches 15 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.8409
execute if score @s fttsign_reg0 matches 16 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.8909
execute if score @s fttsign_reg0 matches 17 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 0.9439
execute if score @s fttsign_reg0 matches 18 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 1.0000
execute if score @s fttsign_reg0 matches 19 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 1.0595
execute if score @s fttsign_reg0 matches 20 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 1.1225
execute if score @s fttsign_reg0 matches 21 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 1.1892
execute if score @s fttsign_reg0 matches 22 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 1.2599
execute if score @s fttsign_reg0 matches 23 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 1.3348
execute if score @s fttsign_reg0 matches 24 run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 3 1.4142

scoreboard players reset @s fttsign_reg0

# Please enable the following line if you need to debug the keyboard positions.
#execute if score @s fttsign_touchy matches -250.. run tellraw @s [{"text":"Relative Position:  X=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_touchx"},"bold":true,"color":"gold"},{"text":" Y=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_touchy"},"bold":true,"color":"gold"}]
