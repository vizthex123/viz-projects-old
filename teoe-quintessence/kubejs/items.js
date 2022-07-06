// If anything breaks, it's Lady Lexxie's fault (on the KubeJS Discord) for making me move everything into 1 file
onEvent('item.registry', event => {
		event.create('glue')
		event.create('lime')
		event.create('sawdust_clump')
		event.create('crushed_platinum')
		event.create('compressed_sawdust')
		event.create('mdf').displayName('MDF Board').burnTime(200)
		event.create('quintessence').rarity('epic').maxStackSize(1).glow(true)
		event.create('portal_catalyst').displayName('Twilight Portal Catalyst').rarity('uncommon').maxStackSize(1).glow(true)
})