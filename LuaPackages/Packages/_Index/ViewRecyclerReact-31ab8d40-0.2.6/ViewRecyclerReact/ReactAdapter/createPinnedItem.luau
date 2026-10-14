local Root = script:FindFirstAncestor("ViewRecyclerReact")

local RecyclableViewRegistry = require(Root.ReactAdapter.Private.RecyclableViewRegistry)

export type PinnedItem<T> = {
	key: string,
	value: T,
	itemType: RecyclableViewRegistry.RecyclableViewType<T>,
}

local function createPinnedItem<T>(options: PinnedItem<T>): PinnedItem<T>
	assert(options.key ~= "", "createPinnedItem: `key` must not be empty")
	assert(
		RecyclableViewRegistry.isRegistered(options.itemType),
		"createPinnedItem: `itemType` must be a Recyclable view type"
	)
	return table.freeze({
		key = options.key,
		value = options.value,
		itemType = options.itemType,
	})
end

return createPinnedItem
