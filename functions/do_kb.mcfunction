execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~2,dx=8,y=~-10,dy=20,z=~2,dz=8,c=1] run tp ~-1.5 ~ ~-1.5 true
execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~-10,dx=8,y=~-10,dy=20,z=~2,dz=8,c=1] run tp ~1.5 ~ ~-1.5 true
execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~2,dx=8,y=~-10,dy=20,z=~-10,dz=8,c=1] run tp ~-1.5 ~ ~1.5 true
execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~-10,dx=8,y=~-10,dy=20,z=~-10,dz=8,c=1] run tp ~1.5 ~ ~1.5 true

execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~-2,dx=4,y=~-10,dy=20,z=~-10,dz=10,c=1] run tp ~ ~ ~2.12 true
execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~-10,dx=10,y=~-10,dy=20,z=~-2,dz=4,c=1] run tp ~2.12 ~ ~ true
execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~-2,dx=4,y=~-10,dy=20,z=~,dz=10,c=1] run tp ~ ~ ~-2.12 true
execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~,dx=10,y=~-10,dy=20,z=~-2,dz=4,c=1] run tp ~-2.12 ~ ~ true

execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~-10,dx=20,y=~-10,dy=8,z=~-10,dz=20,c=1] run tp ~ ~1 ~ true
execute as @e[scores={kb_time=!0}] run execute at @s if entity @a[hasitem={item=artifact:yeetus_theetus},x=~-10,dx=20,y=~3.5,dy=7,z=~-10,dz=20,c=1] run tp ~ ~-1 ~ true

execute as @e[scores={kb_time=!0}] run scoreboard players remove @s kb_time 1