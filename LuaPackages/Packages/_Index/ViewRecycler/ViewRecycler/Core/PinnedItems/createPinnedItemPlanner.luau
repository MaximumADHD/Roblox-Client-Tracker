local Src = script:FindFirstAncestor("ViewRecycler")

local DataSource = require(Src.Core.DataSource)
local Placement = require(Src.Core.Placement.PlacementTypes)
local ShallowTable = require(Src.Internal.ShallowTable)
local Types = require(Src.Core.Types)
local buildPlacementPlan = require(Src.Core.PinnedItems.buildPlacementPlan)
local createStickyIndexResolver = require(Src.Core.PinnedItems.StickyIndexResolver)

local PINNED_ITEM_KEYS = table.freeze({ "key", "value", "itemViewType" })

export type PinnedItem<T, ItemViewType> = {
	key: string,
	value: T,
	itemViewType: ItemViewType,
}

export type Options<T, ItemViewType> = {
	isItemStickyHeader: ((item: T, index: number) -> boolean)?,
	pinnedStartItem: PinnedItem<T, ItemViewType>?,
	pinnedEndItem: PinnedItem<T, ItemViewType>?,
}

export type Planner<T, ItemViewType> = {
	getContentInsets: () -> Placement.ContentInsets,
	update: (context: Placement.Context<T>) -> Placement.Plan<T, ItemViewType>,
	applyDataSourceChange: (changeBatch: Types.DataSourceChangeBatch) -> (),
	updatePinnedMeasurement: (
		position: Placement.PinnedPosition,
		key: string,
		revision: number,
		length: number
	) -> Placement.ContentInsets?,
	setOptions: (options: Options<T, ItemViewType>) -> boolean,
	setDataSource: (dataSource: DataSource.DataSource<T>) -> (),
	destroy: () -> (),
}

type State<T, ItemViewType> = {
	item: PinnedItem<T, ItemViewType>?,
	revision: number,
	length: number,
}

local function sameItem<T, ItemViewType>(left: PinnedItem<T, ItemViewType>?, right: PinnedItem<T, ItemViewType>?): boolean
	return left == right or (left ~= nil and right ~= nil and ShallowTable.containsEqual(left, right, PINNED_ITEM_KEYS))
end

local function createPinnedItemPlanner<T, ItemViewType>(
	initialDataSource: DataSource.DataSource<T>,
	initialOptions: Options<T, ItemViewType>
): Planner<T, ItemViewType>
	local options = initialOptions
	local resolver = createStickyIndexResolver(initialDataSource, options.isItemStickyHeader)
	local startState: State<T, ItemViewType> = {
		item = options.pinnedStartItem,
		revision = 1,
		length = 0,
	}
	local endState: State<T, ItemViewType> = {
		item = options.pinnedEndItem,
		revision = 1,
		length = 0,
	}

	local function setItem(state: State<T, ItemViewType>, item: PinnedItem<T, ItemViewType>?): boolean
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

	local function resolvedItem(
		state: State<T, ItemViewType>,
		position: Placement.PinnedPosition
	): buildPlacementPlan.PinnedItem<T, ItemViewType>?
		local item = state.item
		if item == nil then
			return nil
		end
		return {
			key = item.key,
			value = item.value,
			itemViewType = item.itemViewType,
			revision = state.revision,
			length = state.length,
			position = position,
		}
	end

	return {
		getContentInsets = getContentInsets,
		update = function(context)
			resolver.setDataSource(context.dataSource)
			return buildPlacementPlan({
				dataSource = context.dataSource,
				layout = context.layout,
				stickyIndices = resolver.resolve(),
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
			local changed = resolver.setPredicate(nextOptions.isItemStickyHeader)
			changed = setItem(startState, nextOptions.pinnedStartItem) or changed
			changed = setItem(endState, nextOptions.pinnedEndItem) or changed
			return changed
		end,
		setDataSource = resolver.setDataSource,
		destroy = function() end,
	}
end

return createPinnedItemPlanner
