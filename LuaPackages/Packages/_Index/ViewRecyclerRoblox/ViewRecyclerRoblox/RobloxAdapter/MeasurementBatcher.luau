local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

export type MeasurementBatcher<ItemView, T> = {
	add: (measurement: Core.ItemViewMeasurement<ItemView, T>) -> (),
	-- Delivers the pending batch now and returns it.
	flush: () -> { Core.ItemViewMeasurement<ItemView, T> }?,
	cancelPending: () -> (),
	destroy: () -> (),
}

local MeasurementBatcher = {}

function MeasurementBatcher.new<ItemView, T>(
	onFlush: (measurements: { Core.ItemViewMeasurement<ItemView, T> }) -> (),
	schedule: ((callback: () -> ()) -> ())?
): MeasurementBatcher<ItemView, T>
	local defer = schedule or task.defer
	local pending: { Core.ItemViewMeasurement<ItemView, T> }? = nil
	local alive = true

	local function add(measurement: Core.ItemViewMeasurement<ItemView, T>)
		if not alive then
			return
		end
		local batch = pending
		if batch == nil then
			batch = {}
			pending = batch
			defer(function()
				if alive and pending == batch then
					pending = nil
					onFlush(batch :: { Core.ItemViewMeasurement<ItemView, T> })
				end
			end)
		end
		table.insert(batch, measurement)
	end

	local function cancelPending()
		pending = nil
	end

	return {
		add = add,
		flush = function()
			local batch = pending
			if not alive or batch == nil then
				return nil
			end
			pending = nil
			onFlush(batch)
			return batch
		end,
		cancelPending = cancelPending,
		destroy = function()
			alive = false
			cancelPending()
		end,
	}
end

return MeasurementBatcher
