local Src = script:FindFirstAncestor("ViewRecycler")

local ItemSequence = require(Src.Core.Virtualizer.ItemSequence)
local Layout = require(Src.Core.Layout)
local Placement = require(Src.Core.Placement.PlacementTypes)
local ShallowTable = require(Src.Internal.ShallowTable)
local Types = require(Src.Core.Types)
local buildPlacementPlan = require(Src.Core.PinnedItems.buildPlacementPlan)
local createStickyIndexResolver = require(Src.Core.PinnedItems.StickyIndexResolver)

local PINNED_ITEM_KEYS = table.freeze({ "key" })

export type PinnedItem = {
	key: string,
}

export type Options = {
	isItemStickyKey: ((key: string) -> boolean)?,
	pinnedStartItem: PinnedItem?,
	pinnedEndItem: PinnedItem?,
}

export type UpdateContext = {
	itemSequence: ItemSequence.ItemSequence,
	layout: Layout.Runtime,
	scrollOffset: number,
	viewportLength: number,
	contentStartOffset: number,
}

export type Planner = {
	getContentInsets: () -> Placement.ContentInsets,
	update: (context: UpdateContext) -> Placement.Plan,
	applyDataSourceChange: (changeBatch: Types.DataSourceChangeBatch) -> (),
	updatePinnedMeasurement: (
		position: Placement.PinnedPosition,
		key: string,
		revision: number,
		length: number
	) -> Placement.ContentInsets?,
	setOptions: (options: Options) -> boolean,
	setItemSequence: (itemSequence: ItemSequence.ItemSequence) -> (),
	destroy: () -> (),
}

type State = {
	item: PinnedItem?,
	revision: number,
	length: number,
}

local function sameItem(left: PinnedItem?, right: PinnedItem?): boolean
	return left == right or (left ~= nil and right ~= nil and ShallowTable.containsEqual(left, right, PINNED_ITEM_KEYS))
end

local function createPinnedItemPlanner(initialItemSequence: ItemSequence.ItemSequence, initialOptions: Options): Planner
	local options = initialOptions
	local resolver = createStickyIndexResolver(initialItemSequence, options.isItemStickyKey)
	local startState: State = {
		item = options.pinnedStartItem,
		revision = 1,
		length = 0,
	}
	local endState: State = {
		item = options.pinnedEndItem,
		revision = 1,
		length = 0,
	}

	local function setItem(state: State, item: PinnedItem?): boolean
		if sameItem(state.item, item) then
			return false
		end
		state.item = item
		state.revision += 1
		state.length = 0
		return true
	end

	local function getContentInsets(): Placement.ContentInsets
		return {
			start = if startState.item == nil then 0 else startState.length,
			finish = if endState.item == nil then 0 else endState.length,
		}
	end

	local function resolvedItem(state: State, position: Placement.PinnedPosition): buildPlacementPlan.PinnedItem?
		local item = state.item
		if item == nil then
			return nil
		end
		return {
			key = item.key,
			revision = state.revision,
			length = state.length,
			position = position,
		}
	end

	return {
		getContentInsets = getContentInsets,
		update = function(context)
			resolver.setItemSequence(context.itemSequence)
			local startLength = if startState.item == nil then 0 else startState.length
			local activeStickyIndex, nextStickyIndex = resolver.resolveActive(function(index)
				return context.layout.getItemLayout(index).startOffset
						+ context.contentStartOffset
						- context.scrollOffset
					< startLength
			end)
			return buildPlacementPlan({
				itemSequence = context.itemSequence,
				layout = context.layout,
				activeStickyIndex = activeStickyIndex,
				nextStickyIndex = nextStickyIndex,
				scrollOffset = context.scrollOffset,
				viewportLength = context.viewportLength,
				contentStartOffset = context.contentStartOffset,
				pinnedStartItem = resolvedItem(startState, Placement.PinnedPosition.Start),
				pinnedEndItem = resolvedItem(endState, Placement.PinnedPosition.Finish),
			})
		end,
		applyDataSourceChange = function(changeBatch: Types.DataSourceChangeBatch)
			resolver.applyDataSourceChange(changeBatch)
		end,
		updatePinnedMeasurement = function(position, key, revision, length)
			assert(length >= 0 and length < math.huge, "PinnedItems: measured length must be finite and non-negative")
			local state = if position == Placement.PinnedPosition.Start then startState else endState
			local item = state.item
			if item == nil or item.key ~= key or state.revision ~= revision or state.length == length then
				return nil
			end
			state.length = length
			return getContentInsets()
		end,
		setOptions = function(nextOptions)
			options = nextOptions
			local changed = resolver.setPredicate(nextOptions.isItemStickyKey)
			changed = setItem(startState, nextOptions.pinnedStartItem) or changed
			changed = setItem(endState, nextOptions.pinnedEndItem) or changed
			return changed
		end,
		setItemSequence = resolver.setItemSequence,
		destroy = function() end,
	}
end

return createPinnedItemPlanner
