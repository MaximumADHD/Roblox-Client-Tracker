local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

export type MeasurementBatcher = {
	add: (measurement: Core.ItemViewMeasurement) -> (),
	cancelPending: () -> (),
	destroy: () -> (),
}

local MeasurementBatcher = {}

function MeasurementBatcher.new(
	onFlush: (measurements: { Core.ItemViewMeasurement }) -> (),
	schedule: ((callback: () -> ()) -> ())?
): MeasurementBatcher
	local defer = schedule or task.defer
	local pending: { Core.ItemViewMeasurement } = {}
	local flushScheduled = false
	local scheduleGeneration = 0
	local alive = true

	local function add(measurement: Core.ItemViewMeasurement)
		if not alive then
			return
		end
		table.insert(pending, measurement)
		if flushScheduled then
			return
		end
		flushScheduled = true
		scheduleGeneration += 1
		local scheduledGeneration = scheduleGeneration
		defer(function()
			if scheduledGeneration ~= scheduleGeneration then
				return
			end
			flushScheduled = false
			if not alive then
				return
			end
			local measurements = pending
			pending = {}
			onFlush(measurements)
		end)
	end

	local function cancelPending()
		scheduleGeneration += 1
		flushScheduled = false
		pending = {}
	end

	return {
		add = add,
		cancelPending = cancelPending,
		destroy = function()
			alive = false
			cancelPending()
		end,
	}
end

return MeasurementBatcher
