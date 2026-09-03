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
	updateItemMeasurement: (measurement: Types.ItemLayoutMeasurement) -> MeasurementUpdate,
	requiresItemMeasurement: () -> boolean,
	applyDataSourceChange: (change: Types.DataSourceChange) -> boolean,
	setViewportCrossAxisLength: (crossAxisLength: number) -> boolean,
	destroy: () -> (),
}

return {}
