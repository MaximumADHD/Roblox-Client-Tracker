-- VirtualList props name Virtualizer configuration keys directly, and
-- `createVirtualizer` keeps only those keys, so props pass through whole.
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Roblox = require(Root.Parent.ViewRecyclerRoblox)

export type HostTarget = {
	scrollingFrame: ScrollingFrame?,
	viewportOverlay: GuiObject?,
}

local function toCorePinnedItem(item)
	if item == nil then
		return nil
	end
	return {
		key = item.key,
		value = item.value,
		itemViewType = item.itemType,
	}
end

local function virtualizerConfiguration(props: any, target: HostTarget): Roblox.VirtualizerConfiguration<any, any>
	local configuration = table.clone(props)
	configuration.scrollingFrame = target.scrollingFrame
	configuration.viewportOverlay = target.viewportOverlay
	configuration.pinnedStartItem = toCorePinnedItem(props.pinnedStartItem)
	configuration.pinnedEndItem = toCorePinnedItem(props.pinnedEndItem)
	return configuration
end

return virtualizerConfiguration
