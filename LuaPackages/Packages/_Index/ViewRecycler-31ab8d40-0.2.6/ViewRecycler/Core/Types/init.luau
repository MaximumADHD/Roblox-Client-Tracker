-- Shared value types for the pure-Luau core.
--
-- The core speaks scalar main-axis coordinates: offsets and lengths are
-- numbers along the scroll direction. `UDim2`, `Vector2`, and the
-- concept of an x/y direction exist only in the Roblox adapter, which
-- maps scalars to engine types at the edge.
local Src = script:FindFirstAncestor("ViewRecycler")

-- selene: allow(unused_variable)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
-- selene: allow(unused_variable)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)

-- Inclusive 1-based index range. Empty when lastIndex < firstIndex.
export type IndexRange = {
	firstIndex: number,
	lastIndex: number,
}

-- Where an item sits. `startOffset`/`length` are main-axis scalars.
-- Cross-axis fields describe equal-width slots for grid-like layouts; linear
-- layouts omit them (the item spans the full cross axis). Spacing is a pixel
-- gutter distributed between those fractional slots by host adapters.
export type ItemLayout = {
	startOffset: number,
	length: number,
	crossAxisIndex: number?,
	crossAxisCount: number?,
	crossAxisSpacing: number?,
}

export type ItemLayoutMeasurement = {
	itemIndex: number,
	itemKey: string,
	length: number,
}

export type ItemMeasurement = {
	itemIndex: number,
	itemKey: string,
	itemRevision: number,
	length: number,
}

-- Physical Measurement identity is validated at the Virtualizer boundary and is
-- never forwarded to Layout or the Virtualizer engine.
export type ItemViewMeasurement = {
	itemIndex: number?,
	itemKey: string,
	assignmentGeneration: number,
	itemRevision: number,
	pinnedPosition: PinnedPosition.PinnedPosition?,
	length: number,
}

export type MeasurementIdentity = {
	itemIndex: number?,
	itemKey: string,
	assignmentGeneration: number,
	itemRevision: number,
	pinnedPosition: PinnedPosition.PinnedPosition?,
}

export type ScrollState = {
	scrollOffset: number,
	viewportLength: number,
	contentLength: number,
	distanceFromEnd: number,
	atStart: boolean,
	atEnd: boolean,
}

export type ScrollStateBeforeChange = ScrollState

-- Changes are sequential, self-contained deltas. Each change describes the
-- state transition at its position in the batch without requiring a read from
-- the DataSource, whose public view already reflects the final state.
export type ResetDataSourceChange = { type: typeof(DataSourceChangeType.Reset), keys: { string } }
export type UpdateDataSourceChange = { type: typeof(DataSourceChangeType.Update), keys: { string } }
export type InsertDataSourceChange = { type: typeof(DataSourceChangeType.Insert), index: number, keys: { string } }
export type RemoveDataSourceChange = { type: typeof(DataSourceChangeType.Remove), index: number, keys: { string } }
export type MoveDataSourceChange = {
	type: typeof(DataSourceChangeType.Move),
	fromIndex: number,
	toIndex: number,
	key: string,
}
export type ReorderDataSourceChange = { type: typeof(DataSourceChangeType.Reorder), keys: { string } }

export type DataSourceChange =
	ResetDataSourceChange
	| UpdateDataSourceChange
	| InsertDataSourceChange
	| RemoveDataSourceChange
	| MoveDataSourceChange
	| ReorderDataSourceChange

export type DataSourceChangeBatch = {
	changes: { DataSourceChange },
	previousItemCount: number,
	itemCount: number,
}

local Types = {}

Types.EMPTY_INDEX_RANGE = table.freeze({ firstIndex = 1, lastIndex = 0 }) :: IndexRange
Types.INDEX_RANGE_KEYS = table.freeze({ "firstIndex", "lastIndex" })
Types.ITEM_LAYOUT_KEYS = table.freeze({ "startOffset", "length" })
Types.SCROLL_STATE_KEYS =
	table.freeze({ "scrollOffset", "viewportLength", "contentLength", "distanceFromEnd", "atStart", "atEnd" })

function Types.isIndexRangeEmpty(range: IndexRange): boolean
	return range.lastIndex < range.firstIndex
end

function Types.getIndexRangeLength(range: IndexRange): number
	return math.max(0, range.lastIndex - range.firstIndex + 1)
end

return Types
