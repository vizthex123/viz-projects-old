# Changes recipes for Quantum Quarry's content

print("quantum_quarry.zs loading...");

val eye = <item:minecraft:ender_eye>;
val ender = <item:extendedcrafting:ender_ingot>;
val enhanced_ender = <item:extendedcrafting:enhanced_ender_ingot>;

// Earth Orb
craftingTable.remove(<item:quantumquarryplus:earth_orb>);
<recipetype:botania:runic_altar>.addRecipe("earth_orb", <item:quantumquarryplus:earth_orb>, 5000, [eye, <item:naturesaura:infused_iron>, <item:naturesaura:infused_iron>, <item:kubejs:glue>, <item:kubejs:glue>]);

# Upgrades
craftingTable.remove(<item:quantumquarryplus:upgrade_base>);
craftingTable.remove(<item:quantumquarryplus:filter_upgrade>);
craftingTable.remove(<item:quantumquarryplus:pump_upgrade>);

// Base
mods.extendedcrafting.EnderCrafting.addShaped("upgrade_base", <item:quantumquarryplus:upgrade_base>,
	[[<item:minecraft:air>, ender, <item:minecraft:air>],
	[ender, <item:quantumquarryplus:ender_obsidian>, ender],
	[<item:minecraft:air>, ender, <item:minecraft:air>]], 15);

mods.extendedcrafting.EnderCrafting.addShaped("enhanced_upgrade_base", <item:quantumquarryplus:upgrade_base>,
	[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[enhanced_ender, <item:quantumquarryplus:ender_obsidian>, enhanced_ender],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]], 15);

// Filter
mods.extendedcrafting.CombinationCrafting.addRecipe("quantum_filter_upgrade", <item:quantumquarryplus:filter_upgrade>, 5000, [<item:quantumquarryplus:upgrade_base>, <item:essentials:hopper_filter>, <item:thermal:item_filter_augment>, <item:squarry:upgrade_filter>, <item:rftoolsbase:filter_module>], 50);

// Pump
mods.extendedcrafting.CombinationCrafting.addRecipe("quantum_pump_upgrade", <item:quantumquarryplus:pump_upgrade>, 5000, [<item:thermal:device_water_gen>, <item:rangedpumps:pump>, <item:create:mechanical_pump>, <item:botania:pump>], 50);

// Ender Obsidian
craftingTable.remove(<item:quantumquarryplus:ender_obsidian>);
mods.extendedcrafting.EnderCrafting.addShaped("ender_obsidian", <item:quantumquarryplus:ender_obsidian>*6,
	[[<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>],
	[eye, eye, eye],
	[<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]], 60);

mods.extendedcrafting.EnderCrafting.addShaped("ender_obsidian_crying", <item:quantumquarryplus:ender_obsidian>*24,
	[[<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>],
	[eye, eye, eye],
	[<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>]], 30);	

// Quarry Frame
// Same as the default recipe, but requires Basic Crafting
craftingTable.remove(<item:quantumquarryplus:quarry_framw>);
mods.extendedcrafting.EnderCrafting.addShaped("quarry_frame", <item:quantumquarryplus:quarry_framw>,
	[[<item:minecraft:end_rod>, <item:quantumquarryplus:ender_obsidian>, <item:minecraft:end_rod>],
	[<item:quantumquarryplus:ender_obsidian>, <item:minecraft:ender_chest>, <item:quantumquarryplus:ender_obsidian>],
	[<item:minecraft:end_rod>, <item:quantumquarryplus:ender_obsidian>, <item:minecraft:end_rod>]], 60);

// Endercell
craftingTable.remove(<item:quantumquarryplus:endercell>);
<recipetype:create:mechanical_crafting>.addRecipe("endercell", <item:quantumquarryplus:endercell>,
[[<tag:items:teoe:magic_dust>, <item:naturesaura:sky_ingot>, <tag:items:teoe:magic_dust>],
[<item:malum:hallowed_gold_ingot>, <item:quantumquarryplus:quarry_framw>, <item:malum:hallowed_gold_ingot>],
[<tag:items:teoe:magic_dust>, <item:extendedcrafting:redstone_ingot_block>, <tag:items:teoe:magic_dust>]]);

# Quantum Quarry
craftingTable.remove(<item:quantumquarryplus:quantum_quarry_plus>);
mods.extendedcrafting.TableCrafting.addShaped("quantum_quarry", 2, <item:quantumquarryplus:quantum_quarry_plus>,
	[[<item:botania:elementium_ingot>, enhanced_ender, <item:malum:soul_stained_steel_pickaxe>.anyDamage(), enhanced_ender, <item:botania:elementium_ingot>],
	[<item:thermal:enderium_ingot>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:thermal:enderium_ingot>],
	[<item:rftoolsbase:infused_enderpearl>, <item:quantumquarryplus:endercell>, <item:squarry:powered_quarry>, <item:quantumquarryplus:endercell>, <item:rftoolsbase:infused_enderpearl>],
	[<item:thermal:enderium_ingot>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:quantumquarryplus:quarry_framw>, <item:thermal:enderium_ingot>],
	[<item:botania:elementium_ingot>, enhanced_ender, <item:ae2:quantum_link>, enhanced_ender, <item:botania:elementium_ingot>]]);

print("quantum_quarry.zs loaded");