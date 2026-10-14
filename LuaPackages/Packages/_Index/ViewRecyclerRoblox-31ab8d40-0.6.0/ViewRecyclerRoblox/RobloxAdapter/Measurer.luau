-- Measurer: watches a slot's Frame and reports settled post-layout
-- sizes. This is the extracted 0.4.x slot measurement machinery; the
-- behaviors below are hard-won Roblox knowledge — keep them.
--
-- 1. GetPropertyChangedSignal only fires when the VALUE changes. When a
--    slot is recycled to content that happens to lay out at the same
--    AbsoluteSize, no signal fires and the item would keep its
--    estimated size forever. So the caller must scheduleSettle()
--    unconditionally on every identity change.
--
-- 2. Sizes are read one Heartbeat after scheduling, when Roblox's
--    layout pass for the new content has settled — never synchronously,
--    where mid-layout values (or the previous occupant's size) leak.
--    StyleRules apply only when the engine renders, and reading Absolute
--    properties does not apply them: content inserted since the last
--    render reads as zero, or as only its untagged parts (a fixed-size
--    icon). So while the caller's isRendered() is false, reads are
--    deferred, never published.
--
-- 3. Pending Heartbeats are NOT cancelled when the slot is recycled
--    away. Each one identity-checks at fire time and drops silently on
--    mismatch. Cancelling would lose measurements in the fast-scroll +
--    measurement-cascade race, leaving estimated sizes (visible gaps).
--
-- 4. A zero cross-axis size means the parent hasn't laid out yet; text
--    with AutomaticSize wraps to infinity in a 0-wide container,
--    producing absurd main-axis sizes. A zero main-axis size of rendered
--    content is a valid settled measurement and must replace the estimate.
local RunService = game:GetService("RunService")
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")

local axisMap = require(Root.RobloxAdapter.axisMap)

type AxisValue = axisMap.AxisValue

export type Measurer = {
	-- Call whenever the ItemView's complete state changes.
	scheduleSettle: () -> (),
	-- Reads and reports the current size now. Only valid where layout is
	-- settled for the frame, such as the end of PreRender.
	measureNow: () -> (),
	getPendingCount: () -> number,
	disconnect: () -> (),
}

local Measurer = {}

function Measurer.attach<State>(
	options: {
		instance: GuiObject,
		axis: AxisValue,
		-- Re-fetched at Heartbeat fire time. Object reference is currentness.
		getState: () -> State?,
		getMeasurementDependencies: (() -> { GuiObject })?,
		subscribeMeasurementDependencies: ((callback: () -> ()) -> () -> ())?,
		onItemMeasured: (state: State, length: number) -> (),
		-- False while the current content has not been through a render.
		isRendered: (() -> boolean)?,
	}
): Measurer
	local instance = options.instance
	local axis: AxisValue = options.axis
	local getState = options.getState
	local getMeasurementDependencies = options.getMeasurementDependencies
	local onItemMeasured = options.onItemMeasured
	local isRendered = options.isRendered

	local pendingHeartbeats: { [RBXScriptConnection]: true } = {}
	local dependencySizeConnections: { [GuiObject]: RBXScriptConnection } = {}
	local disconnectMeasurementDependencies: (() -> ())? = nil
	local lastPublishedState: State? = nil
	local lastPublishedLength: number? = nil
	local pendingByState: { [State]: RBXScriptConnection } = {}

	local scheduleSettle: () -> ()

	local function refreshMeasurementDependencies()
		local currentDependencies = if getMeasurementDependencies == nil then {} else getMeasurementDependencies()
		local retained: { [GuiObject]: true } = {}
		for _, dependency in currentDependencies do
			if retained[dependency] == nil then
				retained[dependency] = true
				if dependencySizeConnections[dependency] == nil then
					dependencySizeConnections[dependency] =
						dependency:GetPropertyChangedSignal("AbsoluteSize"):Connect(scheduleSettle)
				end
			end
		end
		for dependency, connection in dependencySizeConnections do
			if retained[dependency] == nil then
				connection:Disconnect()
				dependencySizeConnections[dependency] = nil
			end
		end
		return currentDependencies
	end

	-- Returns false when the read is deferred to a later Heartbeat.
	local function publish(current: State): boolean
		if isRendered ~= nil and not isRendered() then
			return false
		end
		local absoluteSize = instance.AbsoluteSize
		local crossAxisLength = axisMap.crossOf(absoluteSize, axis)
		if crossAxisLength <= 0 then
			return true
		end
		for _, dependency in refreshMeasurementDependencies() do
			if axisMap.crossOf(dependency.AbsoluteSize, axis) <= 0 then
				return true
			end
		end
		-- AutomaticSize can finish propagating between property reads in
		-- this Heartbeat callback. Re-read immediately before
		-- publication so a committed React host does not report the
		-- previous occupant's main-axis length.
		local length = axisMap.mainOf(instance.AbsoluteSize, axis)
		local duplicate = lastPublishedState == current and lastPublishedLength == length
		if not duplicate then
			onItemMeasured(current, length)
			lastPublishedState = current
			lastPublishedLength = length
		end
		return true
	end

	scheduleSettle = function()
		local scheduledState = getState()
		if scheduledState == nil or pendingByState[scheduledState] ~= nil then
			return
		end

		local connection: RBXScriptConnection
		connection = RunService.Heartbeat:Once(function()
			pendingHeartbeats[connection] = nil
			if pendingByState[scheduledState] == connection then
				pendingByState[scheduledState] = nil
			end

			-- Exact state-reference check: stale deferred work cannot publish.
			local current = getState()
			if current ~= scheduledState then
				return
			end
			if not publish(current) then
				scheduleSettle()
			end
		end)
		pendingHeartbeats[connection] = true
		pendingByState[scheduledState] = connection
	end

	-- Collapse transient mid-layout values into one settled report
	-- (gotcha 2); the caller's unconditional scheduleSettle on identity
	-- change covers the equal-size recycle case (gotcha 1).
	local sizeConnection = instance:GetPropertyChangedSignal("AbsoluteSize"):Connect(scheduleSettle)
	refreshMeasurementDependencies()
	if options.subscribeMeasurementDependencies ~= nil then
		disconnectMeasurementDependencies = options.subscribeMeasurementDependencies(function()
			refreshMeasurementDependencies()
			scheduleSettle()
		end)
	end

	local function disconnect()
		sizeConnection:Disconnect()
		if disconnectMeasurementDependencies ~= nil then
			disconnectMeasurementDependencies()
			disconnectMeasurementDependencies = nil
		end
		for dependency, connection in dependencySizeConnections do
			connection:Disconnect()
			dependencySizeConnections[dependency] = nil
		end
		for connection in pendingHeartbeats do
			connection:Disconnect()
		end
		table.clear(pendingHeartbeats)
		table.clear(pendingByState)
	end

	return {
		scheduleSettle = scheduleSettle,
		measureNow = function()
			local current = getState()
			if current ~= nil then
				publish(current)
			end
		end,
		getPendingCount = function()
			local count = 0
			for _ in pendingHeartbeats do
				count += 1
			end
			return count
		end,
		disconnect = disconnect,
	}
end

return Measurer
