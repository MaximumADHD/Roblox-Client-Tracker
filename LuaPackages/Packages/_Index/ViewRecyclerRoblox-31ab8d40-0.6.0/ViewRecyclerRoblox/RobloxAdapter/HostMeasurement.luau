-- Measures one list's self-sizing Item Hosts and pinned Hosts, and delivers
-- the lengths in batches. A pass at the end of PreRender, where reading
-- Absolute properties forces this frame's layout, reads every measured Host
-- and delivers the changes, so their record and Anchor correction apply
-- before paint. A Host is read only once the engine has rendered its current
-- Assignment, since StyleRules apply only during a render. Heartbeat
-- measurement stays attached and reports what the pass missed.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local MeasurementBatcher = require(Root.RobloxAdapter.MeasurementBatcher)
local Measurer = require(Root.RobloxAdapter.Measurer)

export type MeasurementDependencies = {
	get: () -> { GuiObject },
	subscribe: (callback: () -> ()) -> () -> (),
}

export type Options<ItemView, T> = {
	axis: Core.Axis,
	onItemMeasurements: ({ Core.ItemViewMeasurement<ItemView, T> }) -> (),
	-- True when no measured Host can have resized since the pass last read
	-- them all; asked once per round, so a pass reads nothing while idle.
	isUnchanged: () -> boolean,
}

export type HostMeasurement<ItemView, T> = {
	-- Measures the Host while it shows this exact View state; a nil host or
	-- state stops measuring the ItemView.
	measure: (
		itemView: ItemView,
		host: GuiObject?,
		state: Core.ViewState<T>?,
		dependencies: MeasurementDependencies?
	) -> (),
	setAxis: (axis: Core.Axis) -> (),
	cancelPending: () -> (),
	isPassConnected: () -> boolean,
	-- Host reads the pre-paint pass made, for diagnostics.
	getPassReadCount: () -> number,
	destroy: () -> (),
}

type Record<T> = {
	host: GuiObject,
	dependencies: MeasurementDependencies?,
	measurer: Measurer.Measurer,
	state: Core.ViewState<T>,
	-- The Assignment as of the last pass, whose content that frame's render
	-- styled and laid out.
	renderedAssignment: Core.Assignment<T>?,
}

local RunService = game:GetService("RunService")

-- Rounds of measure, submit, and re-place per frame. Lengths still changing
-- after the last round are read on the next frame.
local MAX_ROUNDS = 4

local function noDependencies(): { GuiObject }
	return {}
end

local function noSubscription(): () -> ()
	return function() end
end

local HostMeasurement = {}

function HostMeasurement.new<ItemView, T>(options: Options<ItemView, T>): HostMeasurement<ItemView, T>
	local axis = options.axis
	local records: { [ItemView]: Record<T> } = {}
	local recordCount = 0
	local destroyed = false
	-- Set when a Host started measuring or newly rendered since the last
	-- round read every Host.
	local dirty = true
	local connection: RBXScriptConnection? = nil
	local readCount = 0
	local batcher = MeasurementBatcher.new(options.onItemMeasurements)

	local function measureRounds()
		for _ = 1, MAX_ROUNDS do
			if destroyed then
				return
			end
			local unchanged = options.isUnchanged()
			if unchanged and not dirty then
				return
			end
			dirty = false
			for _, record in records do
				readCount += 1
				record.measurer.measureNow()
			end
			-- Only a changed Layout length can mount Items or move the anchor;
			-- restated lengths end the pass.
			local delivered = batcher.flush()
			local layoutChanged = false
			for _, measurement in delivered or {} do
				if measurement.length ~= measurement.state.itemLayout.length then
					layoutChanged = true
					break
				end
			end
			if not layoutChanged then
				return
			end
		end
	end

	local function measureBeforePaint()
		measureRounds()
		if destroyed then
			return
		end
		-- This frame's render styles and lays out the content measured now;
		-- newly rendered content is read on the next pass.
		for _, record in records do
			local assignment = record.state.assignment
			if record.renderedAssignment ~= assignment then
				record.renderedAssignment = assignment
				dirty = true
			end
		end
	end

	local function syncConnection()
		local wanted = not destroyed and recordCount > 0
		if wanted and connection == nil then
			dirty = true
			connection = RunService.PreRender:Connect(measureBeforePaint)
		elseif not wanted and connection ~= nil then
			connection:Disconnect()
			connection = nil
		end
	end

	local function stop(itemView: ItemView)
		local record = records[itemView]
		if record ~= nil then
			records[itemView] = nil
			recordCount -= 1
			record.measurer.disconnect()
			syncConnection()
		end
	end

	local function measure(
		itemView: ItemView,
		host: GuiObject?,
		state: Core.ViewState<T>?,
		dependencies: MeasurementDependencies?
	)
		if destroyed then
			return
		end
		local record = records[itemView]
		if
			record ~= nil
			and (host == nil or state == nil or record.host ~= host or record.dependencies ~= dependencies)
		then
			stop(itemView)
			record = nil
		end
		if host == nil or state == nil then
			return
		end
		if record ~= nil then
			if record.state ~= state then
				record.state = state
				record.measurer.scheduleSettle()
			end
			return
		end
		local created: Record<T>
		created = {
			host = host,
			dependencies = dependencies,
			state = state,
			renderedAssignment = nil,
			measurer = Measurer.attach({
				instance = host,
				axis = axis,
				getState = function()
					return if records[itemView] == created then created.state else nil
				end,
				getMeasurementDependencies = if dependencies == nil then noDependencies else dependencies.get,
				subscribeMeasurementDependencies = if dependencies == nil
					then noSubscription
					else dependencies.subscribe,
				isRendered = function()
					return created.state.assignment == created.renderedAssignment
				end,
				onItemMeasured = function(currentState, length)
					batcher.add({
						itemView = itemView,
						state = currentState,
						length = length,
					})
				end,
			}),
		}
		records[itemView] = created
		recordCount += 1
		dirty = true
		syncConnection()
		created.measurer.scheduleSettle()
	end

	return {
		measure = measure,
		setAxis = function(nextAxis)
			if nextAxis == axis then
				return
			end
			axis = nextAxis
			local itemViews = {}
			for itemView in records do
				table.insert(itemViews, itemView)
			end
			for _, itemView in itemViews do
				stop(itemView)
			end
		end,
		cancelPending = function()
			batcher.cancelPending()
		end,
		isPassConnected = function()
			return connection ~= nil
		end,
		getPassReadCount = function()
			return readCount
		end,
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			batcher.destroy()
			for _, record in records do
				record.measurer.disconnect()
			end
			table.clear(records)
			recordCount = 0
			syncConnection()
		end,
	}
end

return HostMeasurement
