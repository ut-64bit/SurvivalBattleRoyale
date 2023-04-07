#> survival_battle_royale:_start
# @user

# しぼーりせっと
    team empty Spectator

# ワールドボーダー設定
    kill @e[type=marker,tag=BorderCenter]
    summon marker ~ 60 ~ {Tags:["BorderCenter"]}
    worldborder warning distance 10
    worldborder center ~ ~
    worldborder set 1000 0

# スコアリセット
    scoreboard players set $Game Phase 0
    scoreboard players set $StartCountDown Timer 140
    scoreboard players operation $W.BorderCountDown Timer = 縮小待機時間 Setting

# タイトル設定
    title @a times 0 60 20

# 通知するよ
    execute as @a at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1 1.0
    tellraw @a [{"text": "[!]","color": "yellow"}," ",{"text": "まもなくゲームが開始します！","color": "white"}]