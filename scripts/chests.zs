// This script adds back the recipe for vanilla chests. Because who the fuck removed it?

val planks = <tag:items:minecraft:planks>;
val air = <item:minecraft:air>;

craftingTable.addShaped("ct_vanilla_chest", <item:minecraft:chest>, [[planks, planks, planks],[planks, air, planks],[ planks, planks, planks]]);
