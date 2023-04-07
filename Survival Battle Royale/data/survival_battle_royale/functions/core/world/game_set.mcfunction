#> survival_battle_royale:core/world/game_set
# @within function survival_battle_royale:core/tick

# 通知するよ
    execute as @a at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1 1.0
    execute if score $Game Count matches 1 run tellraw @a [{"text": "[!]","color": "green"}," ",{"text":"生存者は ","color":"white"},{"selector":"@a[gamemode=survival,limit=1]"},{"text":"さんです！","color": "white"}]
    execute if score $Game Count matches 0 run tellraw @a [{"text": "[!]","color": "green"}," ",{"text": "同時だったからわかんないンゴ... (死亡ログでわかるよ)","color": "gray"}]


# ワールドボーダー設定
    worldborder warning distance 10
    worldborder center ~ ~
    worldborder set 1000 1

# プレイヤーリセット
    clear @a
    gamemode survival @a
    team empty NoPvP
    team empty Spectator
    effect clear @s
    effect give @a resistance 60 4 true
    effect give @s instant_health 10 1 false
    effect give @s saturation 10 1 false

# ゲームキャンセル
    scoreboard players set $Game Phase -1
    title @a title {"text": "Game Set","color": "red","bold": true,"italic": true}