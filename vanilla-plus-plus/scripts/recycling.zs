# Adds recipes to recycle various things

print("recycling.zs loading...");

val nugget = <item:minecraft:iron_nugget>;
val gold_nugget = <item:minecraft:gold_nugget>;

val copper_scrap = <item:kubejs:copper_scrap>;
val small_copper_scrap = <item:kubejs:small_copper_scrap>;

val iron_scrap = <item:kubejs:iron_scrap>;
val small_iron_scrap = <item:kubejs:small_iron_scrap>;

val gold_scrap = <item:kubejs:gold_scrap>;
val small_gold_scrap = <item:kubejs:small_gold_scrap>;

val diamond_scrap = <item:kubejs:diamond_scrap>;
val small_diamond_scrap = <item:kubejs:small_diamond_scrap>;

val netherite_scrap = <item:minecraft:netherite_scrap>;

/*
furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

default cook time is 200

1 ingot = 1 scrap
1 nugget = 1 small scrap

1 scrap = 3 nuggets
9 small scrap = 1 scrap

.1 XP for scrap items, .3 for gold, .5 for diamond, 1 for netherite
*/

# Use Shears to recycle things
craftingTable.addShapeless("recycle_banners", <item:minecraft:string>*12, [<tag:items:bookshelf:shears>.asIIngredient().anyDamage().transformDamage(5), <tag:items:minecraft:banners>]);
craftingTable.addShapeless("recycle_bow", <item:minecraft:string>*2, [<tag:items:bookshelf:shears>.asIIngredient().anyDamage().transformDamage(3), <item:minecraft:bow>.anyDamage()]);
craftingTable.addShapeless("recycle_fishing_rod", <item:minecraft:string>, [<tag:items:bookshelf:shears>.asIIngredient().anyDamage().transformDamage(2), <item:minecraft:fishing_rod>.anyDamage()]);
craftingTable.addShapeless("recycle_lead", <item:minecraft:string>*2, [<tag:items:bookshelf:shears>.asIIngredient().anyDamage().transformDamage(1), <item:minecraft:lead>]);


// Recycle Music Discs
blastFurnace.addRecipe("recycle_music_disc", <item:kubejs:disc_residue>, <tag:items:minecraft:music_discs>, 5.0, 100);

// Recycle Candles
furnace.addRecipe("recycle_candles", <item:minecraft:honeycomb>, <tag:items:minecraft:candles>, 0.5, 100);



### Untagged Recipes
// Blast Golden Apples into Gold Scrap
furnace.addRecipe("smelt_golden_apple", gold_scrap*8, <item:minecraft:golden_apple>, 2.0, 200);
blastFurnace.addRecipe("blast_golden_apple", gold_scrap*8, <item:minecraft:golden_apple>, 2.0, 100);

// Blast Enchanted Golden Apples into Gold Scrap
blastFurnace.addRecipe("blast_enchanted_golden_apple", gold_scrap*64, <item:minecraft:enchanted_golden_apple>, 8.0, 100);

// Blast Totems of Undying into Gold Scrap
blastFurnace.addRecipe("blast_totem", gold_scrap*32, <item:minecraft:totem_of_undying>, 10.0, 200);

// Blast Echo Shards into Diamond Scrap
blastFurnace.addRecipe("blast_echo_shard", diamond_scrap, <item:minecraft:echo_shard>, 12.0, 400);

// Blast Heart of the Sea into Diamond Scrap
blastFurnace.addRecipe("blast_heart", diamond_scrap*8, <item:minecraft:heart_of_the_sea>, 20.0, 600);

// Blast Sculk Catalysts & Shriekers into Echo Shards
blastFurnace.addRecipe("blast_sculk_catalyst", <item:minecraft:echo_shard>, <item:minecraft:sculk_catalyst>, 16.0, 200);
blastFurnace.addRecipe("blast_sculk_shrieker", <item:minecraft:echo_shard>, <item:minecraft:sculk_shrieker>, 32.0, 200);



# Modded Recipes
// Recycle Amethyst Mage Hands
furnace.addRecipe("recycle_amethyst_hand", <item:minecraft:amethyst_shard>*3, <item:magehand:amethyst_spawner_item>, 0.1, 200);
blastFurnace.addRecipe("blast_recycle_amethyst_hand", <item:minecraft:amethyst_shard>*3, <item:magehand:amethyst_spawner_item>, 0.1, 100);

// Recycle Ring of Attraction
furnace.addRecipe("recycle_ring", <item:minecraft:lapis_lazuli>*2, <item:ring_of_attraction:ring_of_attraction>, 0.1, 200);
blastFurnace.addRecipe("blast_recycle_ring", <item:minecraft:lapis_lazuli>*2, <item:ring_of_attraction:ring_of_attraction>, 0.1, 100);





# Smelt items into Scrap
# XP gain is equal to half that of smelting the ore
# Small items gain 0.05 less XP
# Big items gain 0.1 more XP
# Diamond and Netherite are the only exceptions due to their rarity

furnace.removeByName("minecraft:iron_nugget_from_smelting");
furnace.removeByName("minecraft:gold_nugget_from_smelting");
blastFurnace.removeByName("minecraft:iron_nugget_from_blasting");
blastFurnace.removeByName("minecraft:gold_nugget_from_blasting");

furnace.removeByName("farmersdelight:iron_nugget_from_smelting_knife");
furnace.removeByName("nethersdelight:iron_nugget_from_smelting_machete");
furnace.removeByName("farmersdelight:gold_nugget_from_smelting_knife");
furnace.removeByName("nethersdelight:gold_nugget_from_smelting_machete");

blastFurnace.removeByName("farmersdelight:iron_nugget_from_blasting_knife");
blastFurnace.removeByName("nethersdelight:iron_nugget_from_blasting_machete");
blastFurnace.removeByName("farmersdelight:gold_nugget_from_blasting_knife");
blastFurnace.removeByName("nethersdelight:gold_nugget_from_blasting_machete");



furnace.addRecipe("recycle_copper_item", small_copper_scrap, <tag:items:vanilla:meltable_copper>.asIIngredient().anyDamage(), 0.25, 200);
blastFurnace.addRecipe("blast_recycle_copper_item", small_copper_scrap, <tag:items:vanilla:meltable_copper>.asIIngredient().anyDamage(), 0.25, 100);


furnace.addRecipe("recycle_small_iron_item", nugget, <tag:items:vanilla:meltable_iron_small>.asIIngredient(), 0.3, 200);
blastFurnace.addRecipe("blast_recycle_small_iron_item", nugget, <tag:items:vanilla:meltable_iron_small>.asIIngredient(), 0.3, 100);

furnace.addRecipe("recycle_iron_item", small_iron_scrap, <tag:items:vanilla:meltable_iron>.asIIngredient().anyDamage(), 0.35, 200);
blastFurnace.addRecipe("blast_recycle_iron_item", small_iron_scrap, <tag:items:vanilla:meltable_iron>.asIIngredient().anyDamage(), 0.35, 100);

furnace.addRecipe("recycle_big_iron_item", iron_scrap, <tag:items:vanilla:meltable_iron_big>.asIIngredient(), 0.45, 200);
blastFurnace.addRecipe("blast_recycle_big_iron_item", iron_scrap, <tag:items:vanilla:meltable_iron_big>.asIIngredient(), 0.45, 100);



furnace.addRecipe("recycle_small_gold_item", gold_nugget, <tag:items:vanilla:meltable_gold_small>.asIIngredient(), 0.7, 200);
blastFurnace.addRecipe("blast_recycle_small_gold_item", gold_nugget, <tag:items:vanilla:meltable_gold_small>.asIIngredient(), 0.7, 100);

furnace.addRecipe("recycle_gold_item", small_gold_scrap, <tag:items:vanilla:meltable_gold>.asIIngredient().anyDamage(), 0.75, 200);
blastFurnace.addRecipe("blast_recycle_gold_item", small_gold_scrap, <tag:items:vanilla:meltable_gold>.asIIngredient().anyDamage(), 0.75, 100);

furnace.addRecipe("recycle_big_gold_item", gold_scrap, <tag:items:vanilla:meltable_gold_big>.asIIngredient(), 0.85, 200);
blastFurnace.addRecipe("blast_recycle_big_gold_item", gold_scrap, <tag:items:vanilla:meltable_gold_big>.asIIngredient(), 0.85, 100);



furnace.addRecipe("recycle_diamond_item", small_diamond_scrap, <tag:items:vanilla:meltable_diamond>.asIIngredient().anyDamage(), 1.0, 200);
blastFurnace.addRecipe("blast_recycle_diamond_item", small_diamond_scrap, <tag:items:vanilla:meltable_diamond>.asIIngredient().anyDamage(), 1.0, 100);

furnace.addRecipe("recycle_big_diamond_item", diamond_scrap, <tag:items:vanilla:meltable_diamond_big>.asIIngredient().anyDamage(), 1.5, 200);
blastFurnace.addRecipe("blast_recycle_big_diamond_item", diamond_scrap, <tag:items:vanilla:meltable_diamond_big>.asIIngredient().anyDamage(), 1.5, 100);


furnace.addRecipe("recycle_netherite_item", netherite_scrap, <tag:items:vanilla:meltable_netherite>.asIIngredient().anyDamage(), 2.0, 200);
blastFurnace.addRecipe("blast_recycle_netherite_item", netherite_scrap, <tag:items:vanilla:meltable_netherite>.asIIngredient().anyDamage(), 2.0, 100);


furnace.addRecipe("recycle_rose_gold_item", copper_scrap, <tag:items:vanilla:meltable_rose_gold>.asIIngredient().anyDamage(), 0.5, 200);
blastFurnace.addRecipe("blast_recycle_rose_gold_item", small_gold_scrap, <tag:items:vanilla:meltable_rose_gold>.asIIngredient().anyDamage(), 0.5, 100);

print("recycling.zs loaded");