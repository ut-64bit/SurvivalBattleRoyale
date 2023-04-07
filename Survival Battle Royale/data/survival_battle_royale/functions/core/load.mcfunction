#> survival_battle_royale:core/load
# @within tag/function minecraft:load

#>
# @public
  #declare tag BorderCenter
  #declare storage temp:
  #declare score_holder $Game
  #declare score_holder $StartCountDown
  #declare score_holder $W.BorderCountDown
  #declare score_holder $20
  #declare score_holder 縮小待機時間

# ストレージ
    data modify storage temp: _ set value {}

# チーム作成
    ## スペクテイター
    team add Spectator {"text": "スペクテイター"}
    team modify Spectator prefix {"text": "死亡: ","color": "gray"}
    team modify Spectator color gray

    ## NoPvP
    team add NoPvP
    team modify NoPvP color white
    team modify NoPvP friendlyFire false
    team modify NoPvP seeFriendlyInvisibles true

# スコアボード
    scoreboard objectives add Death deathCount
    scoreboard objectives add Phase dummy
    scoreboard objectives add Timer dummy
    scoreboard objectives add Count dummy
    scoreboard objectives add Setting dummy

# ボスバー
    bossbar add worldborder {"text":"ワールドボーダー","color": "dark_red"}
    bossbar set worldborder visible false
    bossbar set worldborder style notched_10

# 初期化
    scoreboard players set $20 Count 20
    scoreboard players set $Game Phase -1
    worldborder set 1000 0

    ## 設定
    scoreboard players set 縮小待機時間 Setting 6000