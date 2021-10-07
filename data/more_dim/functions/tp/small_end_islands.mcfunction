effect give @s minecraft:resistance 10 4
execute at @s in more_dim:single_biome/small_end_islands run tp @s ~ 256 ~

execute if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{usetimes:2,id:"more_dim:small_end_islands_teleporter"}} run item replace entity @s weapon.mainhand with minecraft:air

setblock ~ 255 ~ minecraft:chest
data modify block ~ 255 ~ Items append from entity @s SelectedItem

execute if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{usetimes:1,id:"more_dim:small_end_islands_teleporter"}} run data modify block ~ 255 ~ Items[0].tag.usetimes set value 2
execute if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{usetimes:0,id:"more_dim:small_end_islands_teleporter"}} run data modify block ~ 255 ~ Items[0].tag.usetimes set value 1

item replace entity @s weapon.mainhand from block ~ 255 ~ container.0
setblock ~ 255 ~ minecraft:air