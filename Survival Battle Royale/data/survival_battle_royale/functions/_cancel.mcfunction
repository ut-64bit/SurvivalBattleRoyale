#> survival_battle_royale:_cancel
# @user

# ワールドボーダー設定
    worldborder warning distance 10
    worldborder center ~ ~
    worldborder set 1000 1

# あつまえ
    execute at @s as @a run tp @s ~ ~ ~

# 通知するよ
    execute as @a at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1 1
    tellraw @a [{"text": "[!]","color": "yellow"}," ",{"text": "ゲームをキャンセルしました","color": "white"}]

# プレイヤーリセット
    clear @a
    gamemode survival @a
    team empty NoPvP
    team empty Spectator
    xp set @a 0 levels
    xp set @a 0 points
    effect clear @a
    effect give @a instant_health 10 1 false
    effect give @a saturation 10 1 false

# ゲームキャンセル
    scoreboard players set $Game Phase -1