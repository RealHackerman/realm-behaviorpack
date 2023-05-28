effect @a[hasitem={location=slot.armor.feet, item=artifact:boots_of_hermes}] speed 1 5 true
effect @a[hasitem={location=slot.weapon.offhand, item=artifact:the_one_ring}] invisibility 1 1 true
effect @a[hasitem={location=slot.weapon.mainhand, item=artifact:the_one_ring}] invisibility 1 1 true

execute at @e[scores={is_frozen=1..}] run particle minecraft:snowflake_particle ~ ~ ~
execute at @e[scores={is_frozen=1..}] run particle minecraft:blue_flame_particle ~0.5 ~1 ~0.5
execute at @e[scores={is_frozen=1..}] run particle minecraft:blue_flame_particle ~-0.5 ~1 ~0.5
execute at @e[scores={is_frozen=1..}] run particle minecraft:blue_flame_particle ~-0.5 ~1 ~-0.5
execute at @e[scores={is_frozen=1..}] run particle minecraft:blue_flame_particle ~0.5 ~1 ~-0.5

execute at @e[scores={is_frozen=1..}] run particle minecraft:blue_flame_particle ~0.75 ~1 ~
execute at @e[scores={is_frozen=1..}] run particle minecraft:blue_flame_particle ~ ~1 ~0.75
execute at @e[scores={is_frozen=1..}] run particle minecraft:blue_flame_particle ~-0.75 ~1 ~
execute at @e[scores={is_frozen=1..}] run particle minecraft:blue_flame_particle ~ ~1 ~-0.75
scoreboard players remove @e[scores={is_frozen=1..}] is_frozen 1