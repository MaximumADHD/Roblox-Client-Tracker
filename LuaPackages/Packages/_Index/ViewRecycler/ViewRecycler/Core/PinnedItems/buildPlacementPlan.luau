local Src = script:FindFirstAncestor("ViewRecycler")

local DataSource = require(Src.Core.DataSource)
local Layout = require(Src.Core.Layout)
local Placement = require(Src.Core.Placement.PlacementTypes)

export type PinnedItem<T, ItemViewType> = {
	key: string,
	value: T,
	itemViewType: ItemViewType,
	revision: number,
	length: number,
	position: Placement.PinnedPosition,
}

export type Input<T, ItemViewType> = {
	dataSource: DataSource.DataSource<T>,
	layout: Layout.Runtime,
	stickyIndices: { number },
	scrollOffset: number,
	viewportLength: number,
	contentStartOffset: number,
	pinnedStartItem: PinnedItem<T, ItemViewType>?,
	pinnedEndItem: PinnedItem<T, ItemViewType>?,
}

local EMPTY_PLACEMENT_PLAN = table.freeze({
	retainedItems = table.freeze({}),
	additionalAssignments = table.freeze({}),
	placements = table.freeze({}),
	hasViewportRelativePlacements = false,
})

local function buildPlacementPlan<T, ItemViewType>(input: Input<T, ItemViewType>): Placement.Plan<T, ItemViewType>
	if #input.stickyIndices == 0 and input.pinnedStartItem == nil and input.pinnedEndItem == nil then
		return EMPTY_PLACEMENT_PLAN :: any
	end
	local retainedItems: { Placement.RetainedItem } = {}
	local additionalAssignments: { Placement.AdditionalAssignment<T, ItemViewType> } = {}
	local placements: { [string]: Placement.ItemPlacement } = {}
	local startLength = if input.pinnedStartItem == nil then 0 else input.pinnedStartItem.length

	local activePosition = 0
	local low = 1
	local high = #input.stickyIndices
	while low <= high do
		local middle = math.floor((low + high) / 2)
		local index = input.stickyIndices[middle]
		local naturalOffset = input.layout.getItemLayout(index).startOffset
			+ input.contentStartOffset
			- input.scrollOffset
		if naturalOffset < startLength then
			activePosition = middle
			low = middle + 1
		else
			high = middle - 1
		end
	end

	if activePosition > 0 then
		local activeIndex = input.stickyIndices[activePosition]
		local activeLayout = input.layout.getItemLayout(activeIndex)
		local mainAxisOffset = startLength
		local nextIndex = input.stickyIndices[activePosition + 1]
		if nextIndex ~= nil then
			local nextNaturalOffset = input.layout.getItemLayout(nextIndex).startOffset
				+ input.contentStartOffset
				- input.scrollOffset
			mainAxisOffset = math.min(startLength, nextNaturalOffset - activeLayout.length)
		end
		local key = input.dataSource.getItemKey(activeIndex)
		table.insert(retainedItems, {
			key = key,
			index = activeIndex,
		})
		placements[key] = {
			mainAxisOffset = mainAxisOffset,
			mainAxisLength = activeLayout.length,
			viewportRelative = true,
			zIndex = 1,
		}
	end

	for _, pinnedItem in { input.pinnedStartItem, input.pinnedEndItem } do
		if pinnedItem ~= nil then
			table.insert(additionalAssignments, {
				key = pinnedItem.key,
				value = pinnedItem.value,
				itemViewType = pinnedItem.itemViewType,
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
		additionalAssignments = additionalAssignments,
		placements = placements,
		hasViewportRelativePlacements = activePosition > 0
			or input.pinnedStartItem ~= nil
			or input.pinnedEndItem ~= nil,
	}
end

return buildPlacementPlan
