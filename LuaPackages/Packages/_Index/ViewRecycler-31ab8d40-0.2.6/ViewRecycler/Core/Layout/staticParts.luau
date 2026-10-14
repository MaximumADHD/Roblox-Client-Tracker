-- Shared pieces for layouts whose geometry never changes from measurements.
local Src = script:FindFirstAncestor("ViewRecycler")

local LayoutRuntime = require(Src.Core.Layout.LayoutRuntime)
local Types = require(Src.Core.Types)

local staticParts = {}

function staticParts.expandItemRange(
	range: Types.IndexRange,
	before: number,
	after: number,
	itemCount: number
): Types.IndexRange
	return {
		firstIndex = math.max(1, range.firstIndex - before),
		lastIndex = math.min(itemCount, range.lastIndex + after),
	}
end

function staticParts.updateItemMeasurementNoop(
	_measurement: Types.ItemLayoutMeasurement
): LayoutRuntime.MeasurementUpdate
	return {
		accepted = false,
		geometryChanged = false,
	}
end

function staticParts.requiresItemMeasurementFalse(): boolean
	return false
end

function staticParts.geometryUnchanged(): boolean
	return false
end

function staticParts.noop() end

return staticParts
