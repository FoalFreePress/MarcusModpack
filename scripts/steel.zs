// Custom recipes for blocks, fences and slabs made out of steel in MapperBase

val steel = <tag:items:forge:ingots/steel>;
val air = <item:minecraft:air>;
val rod = <tag:items:forge:rods/steel>;
val steelblock = <item:mapperbase:steel_block>;

craftingTable.addShaped("ct_mapperbase_steel_rod", <item:mapperbase:steel_rod>, [[air, steel, air],[air, steel, air],[air, air air]]);
craftingTable.addShaped("ct_mapperbase_steel_fence", <item:mapperbase:steel_fence>, [[air, steel, air],[steel, rod, steel],[steel, rod, steel]]);
craftingTable.addShaped("ct_mapperbase_steel_fence_gate", <item:mapperbase:steel_fence_gate>, [[air, steel, air],[rod, steel, rod],[rod, steel, rod]]);
craftingTable.addShaped("ct_mapperbase_steel_stairs", <item:mapperbase:steel_stairs> * 8, [[steelblock, air, air],[steelblock, steelblock, air],[steelblock, steelblock, steelblock]]);
craftingTable.addShaped("ct_mapperbase_steel_slab", <item:mapperbase:steel_slab> * 6, [[air, air, air],[steelblock, steelblock, steelblock],[air, air, air]]);
craftingTable.addShaped("ct_mapperbase_steel_wall", <item:mapperbase:steel_wall> * 8, [[air, air, air,[steelblock, steelblock, steelblock],[steelblock, steelblock, steelblock]]);
craftingTable.addShaped("ct_mapperbase_steel_pressure_plate", <item:mapperbase:steel_pressure_plate> * 2, [[air, air, air],[steelblock, steelblock, air],[air, air, air]]);
