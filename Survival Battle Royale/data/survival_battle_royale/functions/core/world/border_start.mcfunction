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
    worldborder set 30 3600