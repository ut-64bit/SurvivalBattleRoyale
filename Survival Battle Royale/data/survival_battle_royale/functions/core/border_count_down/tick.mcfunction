#> survival_battle_royale:core/border_count_down/tick
# @within function survival_battle_royale:core/tick

#>
# @private
  #declare score_holder $Copy

# カウントダウン
    scoreboard players remove $W.BorderCountDown Timer 1

# ボスバー
    scoreboard players operation $Copy Timer = 縮小待機時間 Setting
    scoreboard players operation $Copy Timer -= $W.BorderCountDown Timer
    execute store result bossbar worldborder value run scoreboard players get $Copy Timer
    scoreboard players operation $Copy Timer = $W.BorderCountDown Timer
    scoreboard players operation $Copy Timer /= $20 Count
    bossbar set worldborder name [{"text":"ワールドボーダー縮小開始まで:","color": "white"}," ",{"score":{"name":"$Copy","objective":"Timer","value":" 秒"},"color":"red"}]

# NextPhase
    execute if score $W.BorderCountDown Timer matches -1 run function survival_battle_royale:core/border_count_down/next_phase