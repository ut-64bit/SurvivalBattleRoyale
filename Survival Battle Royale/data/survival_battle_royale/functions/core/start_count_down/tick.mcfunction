#> survival_battle_royale:core/start_count_down/tick
# @within function survival_battle_royale:core/tick

# カウントダウン
    scoreboard players remove $StartCountDown Timer 1

# ギュンってなるやつ
    execute if score $StartCountDown Timer matches 1..60 run function survival_battle_royale:core/start_count_down/sub_title

# あと3!
    execute if score $StartCountDown Timer matches 60 as @a at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1
    execute if score $StartCountDown Timer matches 41..60 run title @a title {"text": "3","color": "light_green","bold": true}

# 2!
    execute if score $StartCountDown Timer matches 40 as @a at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.25
    execute if score $StartCountDown Timer matches 21..40 run title @a title {"text": "2","color": "yellow","bold": true}

# 1!!
    execute if score $StartCountDown Timer matches 20 as @a at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.5
    execute if score $StartCountDown Timer matches 1..20 run title @a title {"text": "1","color": "red","bold": true}

# GO!!!
    execute if score $StartCountDown Timer matches 0 as @a at @s run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 1 1.25
    execute if score $StartCountDown Timer matches 0 as @a at @s anchored eyes positioned ^ ^ ^0.1 run particle flash ~ ~ ~ 0.1 0.1 0.1 0 1 normal @s
    execute if score $StartCountDown Timer matches 0 run title @a subtitle ""
    execute if score $StartCountDown Timer matches 0 run title @a title {"text": "GO!!","color": "red","bold": true,"italic": true}
    execute if score $StartCountDown Timer matches 0 as @a run function survival_battle_royale:core/world/game_start