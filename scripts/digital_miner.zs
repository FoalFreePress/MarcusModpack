// This script makes some recipes harder to craft due to lack of balance

craftingTable.removeRecipe(<item:mekanism:digital_miner>);
craftingTable.removeRecipe(<item:mekanism:logistical_sorter>);
val steel = <tag:items:forge:ingots/steel>;

craftingTable.addShaped("ct_mekanism_digital_miner", <item:mekanism:digital_miner>, [[<item:mekanism:alloy_atomic>, <item:mekanism:ultimate_induction_provider>, <item:mekanism:alloy_atomic>],[<item:mekanism:logistical_sorter>, <item:mekanism:robit>, <item:mekanism:logistical_sorter>],[<item:mekanism:teleportation_core>,<item:minecraft:netherite_block>,<item:mekanism:teleportation_core>]]);
craftingTable.addShaped("ct_mekanism_logistical_sorter", <item:mekanism:logistical_sorter>, [[steel, <item:minecraft:piston>, steel],[steel, <item:mekanism:elite_control_circuit>, steel],[steel, <item:mekanism:steel_casing>,steel]]);
