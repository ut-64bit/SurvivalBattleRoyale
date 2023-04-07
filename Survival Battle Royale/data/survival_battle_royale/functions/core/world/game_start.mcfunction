#> survival_battle_royale:core/world/game_start
# @within function survival_battle_royale:core/start_count_down/tick

# プレイヤーごとの
    execute as @a run function survival_battle_royale:core/player/game_start

# ボスバー
    execute store result bossbar worldborder max run scoreboard players get 縮小待機時間 Setting
    bossbar set worldborder value 0
    bossbar set worldborder color blue
    bossbar set worldborder visible true

# NextPhase
    scoreboard players set $Game Phase 1