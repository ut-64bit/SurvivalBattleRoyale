#> survival_battle_royale:core/start_count_down/sub_title
# @within function survival_battle_royale:core/start_count_down/tick

#>
# @private
  #declare score_holder $Copy

scoreboard players operation $Copy Timer = $StartCountDown Timer
scoreboard players operation $Copy Timer %= $20 Count

# ストレージ初期化
    data remove storage temp: _.Subtitle

# 二分探索
    execute if score $Copy Timer matches 16.. run data modify storage temp: _.Subtitle append value "||||||||||||||||"
    execute if score $Copy Timer matches 16.. run scoreboard players remove $Copy Timer 16

    execute if score $Copy Timer matches 8.. run data modify storage temp: _.Subtitle append value "||||||||"
    execute if score $Copy Timer matches 8.. run scoreboard players remove $Copy Timer 8

    execute if score $Copy Timer matches 4.. run data modify storage temp: _.Subtitle append value "||||"
    execute if score $Copy Timer matches 4.. run scoreboard players remove $Copy Timer 4

    execute if score $Copy Timer matches 2.. run data modify storage temp: _.Subtitle append value "||"
    execute if score $Copy Timer matches 2.. run scoreboard players remove $Copy Timer 2

    execute if score $Copy Timer matches 1.. run data modify storage temp: _.Subtitle append value "|"
    execute if score $Copy Timer matches 1.. run scoreboard players remove $Copy Timer 1

title @a subtitle {"nbt":"_.Subtitle","storage":"temp:","interpret":true,"color": "green","bold": true}
