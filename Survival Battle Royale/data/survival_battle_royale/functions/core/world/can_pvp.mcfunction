#> survival_battle_royale:core/world/can_pvp
# @within function survival_battle_royale:core/border_count_down/next_phase

# 通知するよ
    execute as @a at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1 1.0
    tellraw @a [{"text": "[!]","color": "red"}," ",{"text": "PvPができるようになりました","color": "white"}]

# PvPするんだよ！
    team empty NoPvP