#> survival_battle_royale:core/player/death
# @within function survival_battle_royale:core/tick

# スコアリセット
    scoreboard players set @s Death 0

# もーどちぇんじ
    gamemode spectator @s
    team join Spectator @s

# 通知
    playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1.5 1 1
    tellraw @s [{"text": "[!]","color": "gray"}," ",{"text": "あなたは死んでしまった！","color": "gray"}]

    execute if score $Game Count matches 2.. as @a at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1 1.0
    execute if score $Game Count matches 2.. run tellraw @a [{"text": "[!]","color":"white"}," ",[{"text":"残り人数は ","color":"white"},{"score":{"name":"$Game","objective":"Count"},"color":"red"},{"text":" です","color": "white"}]]

# 進捗
    execute if score $Game Phase matches 1 run advancement grant @s only survival_battle_royale:adv/deoti
    execute if score $Game Count matches 2 as @a[gamemode=survival] run advancement grant @s only survival_battle_royale:adv/last_battle
    execute if score $Game Count matches 1 as @a[gamemode=survival] run advancement grant @s only survival_battle_royale:adv/last_survivor
