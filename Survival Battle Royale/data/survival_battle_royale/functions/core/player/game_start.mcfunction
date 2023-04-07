#> survival_battle_royale:core/player/game_start
# @within function survival_battle_royale:core/world/game_start

# おらっサバイバルになるんだよ！
    gamemode survival @s

# PvPすんなや
    team join NoPvP @s

# 演出とか
    tp @s @s
    effect clear @s
    effect give @s blindness 1 0 false
    effect give @s instant_health 10 1 false
    effect give @s saturation 10 1 false

# アイテム消す
    clear @s
    xp set @s 0 levels
    xp set @s 0 points

# アイテムあげる
    give @s stone_sword{NBT:"Sikyu"} 1
    give @s stone_pickaxe{NBT:"Sikyu"} 1
    give @s stone_axe{NBT:"Sikyu"} 1
    give @s stone_shovel{NBT:"Sikyu"} 1
    give @s cooked_beef{NBT:"Sikyu"} 16

# ボスバー見せて
    bossbar set worldborder players @s

# 進捗
    advancement grant @s only survival_battle_royale:adv/survivor