#> survival_battle_royale:core/world/border_start
# @within function survival_battle_royale:core/border_count_down/next_phase

# 通知するよ
    execute as @a at @s run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 0.5 1.0
    tellraw @a [{"text": "[!]","color": "red"}," ",{"text": "ワールドボーダーが縮小します","color": "white"}]

# にーげるんだぁよぉー
    bossbar set worldborder color red
    bossbar set worldborder max 1000
    bossbar set worldborder value 1000
    bossbar set worldborder name {"text": "ワールドボーダー","color": "dark_red"}

# 30から5分刻み
    execute if score 縮小時間 Setting matches 30 run worldborder set 30 1800
    execute if score 縮小時間 Setting matches 35 run worldborder set 30 2100
    execute if score 縮小時間 Setting matches 40 run worldborder set 30 2400
    execute if score 縮小時間 Setting matches 45 run worldborder set 30 2700
    execute if score 縮小時間 Setting matches 50 run worldborder set 30 3000
    execute if score 縮小時間 Setting matches 55 run worldborder set 30 3300
    execute if score 縮小時間 Setting matches 60 run worldborder set 30 3600