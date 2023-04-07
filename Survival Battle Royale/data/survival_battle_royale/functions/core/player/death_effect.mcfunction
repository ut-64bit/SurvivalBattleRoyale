#> survival_battle_royale:core/player/death_effect
# @within advancement survival_battle_royale:death

advancement revoke @s only survival_battle_royale:death

playsound minecraft:block.bell.use player @a ~ ~1 ~ 1 2
particle end_rod ~ ~1 ~ 0 0 0 0.5 20 force @a
particle flash ~ ~1 ~ 0 0 0 0 1 force @a

# 進捗