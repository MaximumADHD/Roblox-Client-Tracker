-- Private synchronization contract between layouts and the core.
-- Applications construct layouts through public factories and never
-- implement this stateful protocol themselves.
local Src = script:FindFirstAncestor("ViewRecycler")

local Types = require(Src.Core.Types)

export type MeasurementUpdate = {
	accepted: boolean,
	geometryChanged: boolean,
}

export type Runtime = {
	getItemCount: () -> number,
	getContentLength: () -> number,
	getIntersectingIndexRange: (startOffset: number, endOffsetExclusive: number) -> Types.IndexRange,
	expandIndexRange: (range: Types.IndexRange, before: number, after: number?) -> Types.IndexRange,
	getItemLayout: (index: number) -> Types.ItemLayout,
	getItemLayouts: ((firstIndex: number, lastIndex: number, output: { Types.ItemLayout }) -> ())?,
	updateItemMeasurement: (measurement: Types.ItemMeasurement) -> MeasurementUpdate,
	requiresItemMeasurement: () -> boolean,
	-- False while the Item occupies an estimate. Absent when every Item's
	-- length is final.
	isItemMeasured: ((index: number) -> boolean)?,
	applyDataSourceChange: (change: Types.DataSourceChange) -> boolean,
	setViewportCrossAxisLength: (crossAxisLength: number) -> boolean,
	-- Present only on Stacked layouts: Items occupy consecutive main-axis
	-- spans in index order across the full cross axis, the first at its
	-- leading padding, each separated by this constant spacing, and their
	-- lengths are known only once measured. Layouts with exact offsets omit
	-- it, because absolute placement is cheaper for them.
	stackedSpacing: (() -> number)?,
	destroy: () -> (),
}

return {}
