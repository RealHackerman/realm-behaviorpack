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

execute at @a[hasitem={location=slot.weapon.mainhand, item=artifact:starvation_medallion}] run effect @a[rm=1,r=10] hunger 3 5 true
execute at @a[hasitem={location=slot.weapon.offhand, item=artifact:starvation_medallion}] run effect @a[rm=1,r=10] hunger 3 5 true

execute at @e[scores={is_snowing=1..}] positioned ~ ~0.8 ~ run tp @e[type=artifact:target_dummy,c=1] ^ ^ ^2
execute at @e[scores={is_snowing=1..}] positioned ~ ~0.8 ~ run tp @e[type=artifact:snowball_dummy,c=1] ^ ^ ^1
execute as @a[scores={is_snowing=1}] run kill @e[type=artifact:snowball_dummy]
execute as @a[scores={is_snowing=1}] run kill @e[type=artifact:target_dummy]
scoreboard players remove @e[type=artifact:countdown,scores={snowing_cooldown=1..}] snowing_cooldown 1
scoreboard players remove @e[scores={is_snowing=1..}] is_snowing 1

execute as @e[type=artifact:countdown,scores={snowing_cooldown=0}] run replaceitem entity @a[hasitem={item=artifact:empty_cum_bucket,location=slot.weapon.mainhand}] slot.weapon.mainhand 0 destroy artifact:cum_bucket 1 0

execute as @e[scores={kb_time=1..}] run scoreboard players remove @s kb_time 1

scoreboard players remove @e[type=artifact:countdown,scores={mushroom_cooldown=1..}] mushroom_cooldown 1
execute as @e[type=artifact:countdown,scores={mushroom_cooldown=0}] run replaceitem entity @a[hasitem={item=artifact:used_berserker_mushroom,location=slot.weapon.mainhand}] slot.weapon.mainhand 0 destroy artifact:berserker_mushroom 1 0
execute as @a[scores={is_powerful=1}] run effect @s nausea 60 2 true
execute as @a[scores={is_powerful=1}] run tag @s add is_debuffed
scoreboard players remove @e[scores={is_powerful=1..}] is_powerful 1

scoreboard players add @a[scores={sniper_charge=1..}] sniper_charge 1
tag @a[scores={sniper_charge=40..}] add valid_sniper

scoreboard players remove @e[type=artifact:countdown,scores={tablet_cooldown=1..}] tablet_cooldown 1

scoreboard players remove @e[type=artifact:countdown,scores={steed_cooldown=1..}] steed_cooldown 1

effect @a[hasitem={location=slot.weapon.offhand, item=artifact:monkey_medallion}] jump_boost 1 1 true
effect @a[hasitem={location=slot.weapon.offhand, item=artifact:monkey_medallion}] speed 1 1 true
effect @a[hasitem={location=slot.weapon.offhand, item=artifact:monkey_medallion}] resistance 1 1 true
effect @a[hasitem={location=slot.weapon.mainhand, item=artifact:monkey_medallion}] jump_boost 1 1 true
effect @a[hasitem={location=slot.weapon.mainhand, item=artifact:monkey_medallion}] speed 1 1 true
effect @a[hasitem={location=slot.weapon.mainhand, item=artifact:monkey_medallion}] resistance 1 1 true

effect @a[hasitem={location=slot.weapon.offhand, item=artifact:vitality_medallion}] health_boost 1 1 true
effect @a[hasitem={location=slot.weapon.mainhand, item=artifact:vitality_medallion}] health_boost 1 1 true

effect @a[hasitem={location=slot.weapon.offhand, item=artifact:oasis_medallion}] saturation 1 1 true
effect @a[hasitem={location=slot.weapon.offhand, item=artifact:oasis_medallion}] haste 1 1 true
effect @a[hasitem={location=slot.weapon.mainhand, item=artifact:oasis_medallion}] saturation 1 1 true
effect @a[hasitem={location=slot.weapon.mainhand, item=artifact:oasis_medallion}] haste 1 1 true

effect @a[hasitem={location=slot.weapon.mainhand, item=artifact:berserker_axe}] strength 1 1 true
effect @a[hasitem={location=slot.weapon.mainhand, item=artifact:berserker_axe}] speed 1 1 true

execute at @a[hasitem={location=slot.weapon.offhand, item=artifact:dragon_heart}] run effect @a[rm=1,r=10] weakness 1 1 true
execute at @a[hasitem={location=slot.weapon.mainhand, item=artifact:dragon_heart}] run effect @a[rm=1,r=10] weakness 1 1 true

tag @a[hasitem={location=slot.armor.chest, item=artifact:hells_chestplate}] add fire_thorns
tag @a[hasitem={location=slot.armor.chest, item=artifact:hells_chestplate, quantity=0}] add fire_thorns

effect @a[hasitem={location=slot.armor.legs, item=artifact:slime_leggings}] jump_boost 1 4 true

effect @a[hasitem={location=slot.armor.head, item=artifact:night_vision_goggles}] night_vision 11 1 true