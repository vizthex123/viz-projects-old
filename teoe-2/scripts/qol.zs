# Adds Quality of Life recipes

import crafttweaker.api.tag.MCTag;

print("qol.zs loading...");

/*
craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

<recipetype:thermal:smelter>.addRecipe("name", [<4-outputs>], [<3-inputs>], 0, rf);
*/

// Smelt Dripleaves into Green Dye
furnace.addRecipe("dripleaf_dye", <item:minecraft:green_dye>, <item:minecraft:big_dripleaf>, 1.5, 200);
furnace.addRecipe("dripleaf_dye2", <item:minecraft:green_dye>, <item:minecraft:small_dripleaf>, 2.0, 200);

// Convert webs into string
craftingTable.addShapeless("web_to_string", <item:minecraft:string>, [<item:minecraft:cobweb>]);

// Make 16 Sticks at once
craftingTable.addShaped("logs_to_sticks", <item:minecraft:stick>*16, 
    [[<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]]);

// Make Anvils out of Lead
craftingTable.addShaped("lead_anvil", <item:minecraft:anvil>, 
    [[<tag:items:forge:storage_blocks/lead>, <tag:items:forge:storage_blocks/lead>, <tag:items:forge:storage_blocks/lead>],
    [<item:minecraft:air>, <tag:items:forge:ingots/lead>, <item:minecraft:air>],
    [<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>]]);

# Smelt Raw Ore Blocks into ingots
# Gives roughly 2x the XP (rounded up to the nearest whole cuz why not?)
# This means that you'll get more XP from raw ores, but the blocks will go a bit faster
blastFurnace.addRecipe("raw_copper_block", <item:minecraft:copper_ingot>*9, <item:minecraft:raw_copper_block>, 2.0, 600);
blastFurnace.addRecipe("raw_iron_block", <item:minecraft:iron_ingot>*9, <item:minecraft:raw_iron_block>, 2.0, 600);
blastFurnace.addRecipe("raw_gold_block", <item:minecraft:gold_ingot>*9, <item:minecraft:raw_gold_block>, 2.5, 600);

blastFurnace.addRecipe("raw_tin_block", <item:thermal:tin_ingot>*9, <item:thermal:raw_tin_block>, 2.0, 600);
blastFurnace.addRecipe("raw_lead_block", <item:thermal:lead_ingot>*9, <item:thermal:raw_lead_block>, 2.0, 600);
blastFurnace.addRecipe("raw_silver_block", <item:thermal:silver_ingot>*9, <item:thermal:raw_silver_block>, 2.0, 600);
blastFurnace.addRecipe("raw_nickel_block", <item:thermal:nickel_ingot>*9, <item:thermal:raw_nickel_block>, 2.0, 600);

blastFurnace.addRecipe("raw_zinc_block", <item:create:zinc_ingot>*9, <item:create:raw_zinc_block>, 2.0, 600);

blastFurnace.addRecipe("raw_pendorite_block", <item:byg:pendorite_scraps>*9, <item:byg:raw_pendorite_block>, 2.0, 900);

print("qol.zs loaded");