#> survival_battle_royale:core/tick
# @within tag/function minecraft:tick

# 生存者何人だ
    execute store result score $Game Count if entity @a[gamemode=survival]

# ボスバー非表示
    execute unless score $Game Phase matches 0..2 run bossbar set worldborder visible false

# 最初のカウントダウン
    execute if score $Game Phase matches 0 run function survival_battle_royale:core/start_count_down/tick

# ボーダーのカウントダウン
    execute if score $Game Phase matches 1 run function survival_battle_royale:core/border_count_down/tick

# 縮小中
    execute if score $Game Phase matches 2 store result bossbar worldborder value run worldborder get

# 死んだんじゃないの～？
    execute as @a[scores={Death=1..}] run function survival_battle_royale:core/player/death

# がめせと
    execute if score $Game Phase matches 1.. if score $Game Count matches ..1 run function survival_battle_royale:core/world/game_set