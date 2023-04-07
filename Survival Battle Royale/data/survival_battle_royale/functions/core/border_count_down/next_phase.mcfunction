#> survival_battle_royale:core/border_count_down/next_phase
# @within function survival_battle_royale:core/border_count_down/tick

# フェーズ上げる
    scoreboard players set $Game Phase 2

# にーげるんだよ～
    function survival_battle_royale:core/world/border_start

# あらそえ！
    schedule function survival_battle_royale:core/world/can_pvp 1s append