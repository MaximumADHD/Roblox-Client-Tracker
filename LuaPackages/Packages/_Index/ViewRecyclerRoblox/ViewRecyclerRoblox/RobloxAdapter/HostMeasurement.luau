-- Measures one list's self-sizing Item Hosts and pinned Hosts, and delivers
-- the lengths in batches. A pass at the end of PreRender, where reading
-- Absolute properties forces this frame's layout, reads every measured Host
-- and delivers the changes, so their record and Anchor correction apply
-- before paint. A Host is read only once the engine has rendered its current
-- Assignment, since StyleRules apply only during a render. Heartbeat
-- measurement stays attached and reports what the pass missed.
--
-- Heartbeat measurement depends on these Roblox behaviors:
--
-- 1. GetPropertyChangedSignal fires only when the value changes. A Host
--    recycled to content that lays out at the same AbsoluteSize fires
--    nothing, so every View state change schedules a read regardless.
--
-- 2. Sizes are read one Heartbeat after scheduling, when the layout pass for
--    the new content has settled, never synchronously, where mid-layout
--    values or the previous occupant's size leak. StyleRules apply only when
--    the engine renders, and reading Absolute properties does not apply them:
--    content inserted since the last render reads as zero, or as only its
--    untagged parts (a fixed-size icon). Reads of unrendered content are
--    deferred to a later Heartbeat, never published.
--
-- 3. A pending read is not cancelled when the Host's View state changes. It
--    checks the state when it fires and drops silently on a mismatch.
--    Cancelling would lose measurements in the fast-scroll and
--    measurement-cascade race, leaving estimated sizes (visible gaps).
--
-- 4. A zero cross-axis size means the parent hasn't laid out yet; text with
--    AutomaticSize wraps to infinity in a 0-wide container, producing absurd
--    main-axis sizes. A zero main-axis size of rendered content is a valid
--    settled measurement and must replace the estimate.
local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact08
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local MeasurementBatcher = require(Root.RobloxAdapter.MeasurementBatcher)
local Measurer = require(Root.RobloxAdapter.Measurer)
local axisMap = require(Root.RobloxAdapter.axisMap)

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
	measure: (itemView: ItemView, host: GuiObject?, state: Core.ViewState<T>?) -> (),
	-- Stops reporting a Host that is hidden in place and keeps measuring it
	-- for the next `measure` of the same Host.
	pause: (itemView: ItemView, host: GuiObject) -> (),
	setAxis: (axis: Core.Axis) -> (),
	cancelPending: () -> (),
	isPassConnected: () -> boolean,
	-- Host reads the pre-paint pass made, for diagnostics.
	getPassReadCount: () -> number,
	-- Heartbeat reads still scheduled, for diagnostics.
	getPendingReadCount: () -> number,
	destroy: () -> (),
}

type Record<ItemView, T> = {
	itemView: ItemView,
	host: GuiObject,
	state: Core.ViewState<T>,
	-- A Host hidden in place stays measured but reports nothing until it is
	-- measured again.
	paused: boolean,
	-- The Assignment as of the last pass, whose content that frame's render
	-- styled and laid out.
	renderedAssignment: Core.Assignment<T>?,
	sizeConnection: RBXScriptConnection,
	-- At most one Heartbeat read per View state.
	pendingReads: { [Core.ViewState<T>]: RBXScriptConnection },
	lastPublishedState: Core.ViewState<T>?,
	lastPublishedLength: number?,

	measurer: Measurer.Measurer?,
}

local RunService = game:GetService("RunService")

-- Rounds of measure, submit, and re-place per frame. Lengths still changing
-- after the last round are read on the next frame.
local MAX_ROUNDS = 4

local HostMeasurement = {}

function HostMeasurement.new<ItemView, T>(options: Options<ItemView, T>): HostMeasurement<ItemView, T>
	local axis = options.axis
	local records: { [ItemView]: Record<ItemView, T> } = {}
	local recordCount = 0
	local destroyed = false
	-- Set when a Host started measuring or newly rendered since the last
	-- round read every Host.
	local dirty = true
	local connection: RBXScriptConnection? = nil
	local readCount = 0

	local undelivered: { Core.ItemViewMeasurement<ItemView, T> }?, deliver, queue, reportedState, publish, measureNow, scheduleRead, disconnect, batcher
	if FFlagViewRecyclerReact08 then -- Lengths not yet delivered. Heartbeat reads are delivered together on
		-- task.defer, so one Core update covers every Host read that Heartbeat.
		undelivered = nil

		function deliver(): { Core.ItemViewMeasurement<ItemView, T> }?
			local batch = undelivered
			if destroyed or batch == nil then
				return nil
			end
			undelivered = nil
			options.onItemMeasurements(batch)
			return batch
		end

		function queue(measurement: Core.ItemViewMeasurement<ItemView, T>)
			local batch = undelivered
			if batch == nil then
				batch = {}
				undelivered = batch
				task.defer(function()
					if undelivered == batch then
						deliver()
					end
				end)
			end
			table.insert(batch, measurement)
		end

		function reportedState(record: Record<ItemView, T>): Core.ViewState<T>?
			return if records[record.itemView] == record and not record.paused then record.state else nil
		end

		-- Returns false when the content has not rendered and the read must wait.
		function publish(record: Record<ItemView, T>, state: Core.ViewState<T>): boolean
			if state.assignment ~= record.renderedAssignment then
				return false
			end
			local host = record.host
			if axisMap.crossOf(host.AbsoluteSize, axis) <= 0 then
				return true
			end
			-- AutomaticSize can finish propagating between property reads in one
			-- callback. Re-read immediately before publication so a committed
			-- React host does not report the previous occupant's main-axis length.
			local length = axisMap.mainOf(host.AbsoluteSize, axis)
			if record.lastPublishedState ~= state or record.lastPublishedLength ~= length then
				record.lastPublishedState = state
				record.lastPublishedLength = length
				queue({
					itemView = record.itemView,
					state = state,
					length = length,
				})
			end
			return true
		end

		function measureNow(record: Record<ItemView, T>)
			local state = reportedState(record)
			if state ~= nil then
				publish(record, state)
			end
		end

		function scheduleRead(record: Record<ItemView, T>)
			local scheduledState = reportedState(record)
			if scheduledState == nil or record.pendingReads[scheduledState] ~= nil then
				return
			end
			record.pendingReads[scheduledState] = RunService.Heartbeat:Once(function()
				record.pendingReads[scheduledState] = nil
				if reportedState(record) == scheduledState and not publish(record, scheduledState) then
					scheduleRead(record)
				end
			end)
		end

		function disconnect(record: Record<ItemView, T>)
			record.sizeConnection:Disconnect()
			for _, pending in record.pendingReads do
				pending:Disconnect()
			end
			table.clear(record.pendingReads)
		end
	else
		batcher = MeasurementBatcher.new(options.onItemMeasurements)
	end

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

				if FFlagViewRecyclerReact08 then
					measureNow(record)
				else
					record.measurer.measureNow()
				end
			end
			-- Only a changed Layout length can mount Items or move the anchor;
			-- restated lengths end the pass.
			local delivered = (if FFlagViewRecyclerReact08 then deliver else batcher.flush)()
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

			if FFlagViewRecyclerReact08 then
				disconnect(record)
			else
				record.measurer.disconnect()
			end
			syncConnection()
		end
	end

	local function setState(record: Record<ItemView, T>, state: Core.ViewState<T>)
		record.state = state

		if FFlagViewRecyclerReact08 then
			scheduleRead(record)
		else
			(record.measurer :: Measurer.Measurer).scheduleSettle()
		end
	end

	local function measure(itemView: ItemView, host: GuiObject?, state: Core.ViewState<T>?)
		if destroyed then
			return
		end
		local record = records[itemView]
		if record ~= nil and (host == nil or state == nil or record.host ~= host) then
			stop(itemView)
			record = nil
		end
		if host == nil or state == nil then
			return
		end
		if record ~= nil then
			if record.paused then
				record.paused = false
				dirty = true
				setState(record, state)
			elseif record.state ~= state then
				setState(record, state)
			end
			return
		end
		local created: Record<ItemView, T> = {
			itemView = (if FFlagViewRecyclerReact08 then itemView else nil),
			host = host,
			state = state,
			paused = false,
			renderedAssignment = nil,
			sizeConnection = (if FFlagViewRecyclerReact08 then nil :: any else nil),
			pendingReads = (if FFlagViewRecyclerReact08 then {} else nil),
			lastPublishedState = (if FFlagViewRecyclerReact08 then nil else nil),
			lastPublishedLength = (if FFlagViewRecyclerReact08 then nil else nil),

			measurer = nil,
		}

		if FFlagViewRecyclerReact08 then -- Collapses transient mid-layout sizes into one settled read.
			created.sizeConnection = host:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				scheduleRead(created)
			end)
		else
			created.measurer = Measurer.attach({
				instance = host,
				axis = axis,
				getState = function()
					return if records[itemView] == created and not created.paused then created.state else nil
				end,
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
			})
		end
		records[itemView] = created
		recordCount += 1
		dirty = true
		syncConnection()

		if FFlagViewRecyclerReact08 then
			scheduleRead(created)
		else
			(created.measurer :: Measurer.Measurer).scheduleSettle()
		end
	end

	return {
		measure = measure,
		pause = function(itemView, host)
			local record = records[itemView]
			if not destroyed and record ~= nil and record.host == host then
				record.paused = true
			else
				measure(itemView, host, nil)
			end
		end,
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
			if FFlagViewRecyclerReact08 then
				undelivered = nil
			else
				batcher.cancelPending()
			end
		end,
		isPassConnected = function()
			return connection ~= nil
		end,
		getPassReadCount = function()
			return readCount
		end,
		getPendingReadCount = (if FFlagViewRecyclerReact08
			then function()
				local count = 0
				for _, record in records do
					for _ in record.pendingReads do
						count += 1
					end
				end
				return count
			end
			else nil),
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true

			if FFlagViewRecyclerReact08 then
				undelivered = nil
			else
				batcher.destroy()
			end
			for _, record in records do
				if FFlagViewRecyclerReact08 then
					disconnect(record)
				else
					record.measurer.disconnect()
				end
			end
			table.clear(records)
			recordCount = 0
			syncConnection()
		end,
	}
end

return HostMeasurement
