local Src = script:FindFirstAncestor("ViewRecycler")

local ItemSequence = require(Src.Core.Virtualizer.ItemSequence)
local Layout = require(Src.Core.Layout)
local Placement = require(Src.Core.Placement.PlacementTypes)

export type PinnedItem = {
	key: string,
	revision: number,
	length: number,
	position: Placement.PinnedPosition,
}

export type Input = {
	itemSequence: ItemSequence.ItemSequence,
	layout: Layout.Runtime,
	activeStickyIndex: number?,
	nextStickyIndex: number?,
	scrollOffset: number,
	viewportLength: number,
	contentStartOffset: number,
	pinnedStartItem: PinnedItem?,
	pinnedEndItem: PinnedItem?,
}

local EMPTY_PLACEMENT_PLAN = table.freeze({
	retainedItems = table.freeze({}),
	additionalItems = table.freeze({}),
	placements = table.freeze({}),
	hasViewportRelativePlacements = false,
})

local function buildPlacementPlan(input: Input): Placement.Plan
	if input.activeStickyIndex == nil and input.pinnedStartItem == nil and input.pinnedEndItem == nil then
		return EMPTY_PLACEMENT_PLAN :: any
	end
	local retainedItems: { Placement.RetainedItem } = {}
	local additionalItems: { Placement.AdditionalItem } = {}
	local placements: { [string]: Placement.ItemPlacement } = {}
	local startLength = if input.pinnedStartItem == nil then 0 else input.pinnedStartItem.length

	local activeIndex = input.activeStickyIndex
	if activeIndex ~= nil then
		local activeLayout = input.layout.getItemLayout(activeIndex)
		-- The adapter resolves the push-off from the painted length, which an
		-- unmeasured header's Layout length only estimates.
		local mainAxisEndLimit = nil
		local nextIndex = input.nextStickyIndex
		if nextIndex ~= nil then
			mainAxisEndLimit = input.layout.getItemLayout(nextIndex).startOffset
				+ input.contentStartOffset
				- input.scrollOffset
		end
		local key = input.itemSequence.getItemKey(activeIndex)
		table.insert(retainedItems, {
			key = key,
			index = activeIndex,
		})
		placements[key] = {
			mainAxisOffset = startLength,
			mainAxisLength = activeLayout.length,
			mainAxisEndLimit = mainAxisEndLimit,
			viewportRelative = true,
			zIndex = 1,
		}
	end

	for _, pinnedItem in { input.pinnedStartItem, input.pinnedEndItem } do
		if pinnedItem ~= nil then
			table.insert(additionalItems, {
				key = pinnedItem.key,
				identity = {
					kind = Placement.IdentityKind.Pinned,
					position = pinnedItem.position,
					revision = pinnedItem.revision,
				},
			})
			placements[pinnedItem.key] = {
				mainAxisOffset = if pinnedItem.position == Placement.PinnedPosition.Start
					then 0
					else math.max(0, input.viewportLength - pinnedItem.length),
				mainAxisLength = pinnedItem.length,
				viewportRelative = true,
				zIndex = 2,
			}
		end
	end

	return {
		retainedItems = retainedItems,
		additionalItems = additionalItems,
		placements = placements,
		hasViewportRelativePlacements = activeIndex ~= nil
			or input.pinnedStartItem ~= nil
			or input.pinnedEndItem ~= nil,
	}
end

return buildPlacementPlan
