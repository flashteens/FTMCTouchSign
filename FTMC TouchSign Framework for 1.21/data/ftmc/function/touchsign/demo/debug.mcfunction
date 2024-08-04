# A demonstration for how to use the TouchSign datapack

function ftmc:touchsign/click_handler

tellraw @s [{"text":"Player:      X=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_player0x"},"bold":true,"color":"aqua"},{"text":" Y=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_player0y"},"bold":true,"color":"aqua"},{"text":" Z=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_player0z"},"bold":true,"color":"aqua"},{"text":"\nArmorStand:  X=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_player1x"},"bold":true,"color":"aqua"},{"text":" Y=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_player1y"},"bold":true,"color":"aqua"},{"text":" Z=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_player1z"},"bold":true,"color":"aqua"},{"text":"\nSign:        X=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_signx"},"bold":true,"color":"aqua"},{"text":" Y=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_signy"},"bold":true,"color":"aqua"},{"text":" Z=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_signz"},"bold":true,"color":"aqua"},{"text":" mode=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_mode"},"bold":true,"color":"aqua"},{"text":"\nNormalized:  X=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_norm2x"},"bold":true,"color":"green"},{"text":" Y=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_norm2y"},"bold":true,"color":"green"},{"text":" Z=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_norm2z"},"bold":true,"color":"green"},{"text":"\nProjection:  X=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_touchx"},"bold":true,"color":"gold"},{"text":" Y=","bold":false,"color":"yellow"},{"score":{"name":"@s","objective":"fttsign_touchy"},"bold":true,"color":"gold"}]