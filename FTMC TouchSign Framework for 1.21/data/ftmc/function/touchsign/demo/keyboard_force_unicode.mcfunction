# A demonstration for how to use the TouchSign datapack

function ftmc:touchsign/click_handler

execute if score @s fttsign_touchx matches -476..-395 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"1","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -394..-313 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"2","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -312..-231 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"3","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -230..-149 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"4","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -148..-67 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"5","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -66..15 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"6","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 16..97 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"7","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 98..179 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"8","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 180..261 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"9","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 262..343 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"0","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 370..412 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"-","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 413..455 if score @s fttsign_touchy matches -220..-130 run tellraw @s [{"text":"You pressed: "},{"text":"=","bold":true,"color":"yellow"}]

execute if score @s fttsign_touchx matches -474..-391 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"Q","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -390..-307 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"W","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -306..-223 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"E","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -222..-141 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"R","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -140..-61 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"T","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -60..19 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"Y","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 20..99 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"U","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 100..179 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"I","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 180..261 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"O","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 262..343 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"P","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 375..395 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"[","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 396..416 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"]","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 417..455 if score @s fttsign_touchy matches -115..-25 run tellraw @s [{"text":"You pressed: "},{"text":"\\","bold":true,"color":"yellow"}]

execute if score @s fttsign_touchx matches -430..-348 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"A","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -347..-265 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"S","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -264..-182 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"D","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -181..-99 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"F","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -98..-16 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"G","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -15..67 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"H","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 68..150 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"J","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 151..233 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"K","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 234..316 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"L","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 317..379 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":";","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 380..442 if score @s fttsign_touchy matches -10..80 run tellraw @s [{"text":"You pressed: "},{"text":"'","bold":true,"color":"yellow"}]

execute if score @s fttsign_touchx matches -401..-319 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":"Z","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -318..-236 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":"X","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -235..-153 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":"C","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -152..-70 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":"V","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches -69..13 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":"B","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 14..96 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":"N","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 97..179 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":"M","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 195..235 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":",","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 255..295 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":".","bold":true,"color":"yellow"}]
execute if score @s fttsign_touchx matches 315..395 if score @s fttsign_touchy matches 95..185 run tellraw @s [{"text":"You pressed: "},{"text":"/","bold":true,"color":"yellow"}]

# Please enable the following line if you need to debug the keyboard positions.
# execute if score @s fttsign_touchy matches -250.. run tellraw @s [{"text":"Relative Position:  X=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_touchx"},"bold":true,"color":"gold"},{"text":" Y=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_touchy"},"bold":true,"color":"gold"}]
