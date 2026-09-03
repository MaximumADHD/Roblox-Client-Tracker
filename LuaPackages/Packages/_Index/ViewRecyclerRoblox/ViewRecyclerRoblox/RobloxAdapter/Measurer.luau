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
--
-- 3. Pending Heartbeats are NOT cancelled when the slot is recycled
--    away. Each one identity-checks at fire time and drops silently on
--    mismatch. Cancelling would lose measurements in the fast-scroll +
--    measurement-cascade race, leaving estimated sizes (visible gaps).
--
-- 4. A zero cross-axis size means the parent hasn't laid out yet; text
--    with AutomaticSize wraps to infinity in a 0-wide container,
--    producing absurd main-axis sizes. A zero main-axis size is a valid
--    settled measurement and must replace the estimate.
local RunService = game:GetService("RunService")
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")

local Core = require(Root.Parent.ViewRecycler)
local axisMap = require(Root.RobloxAdapter.axisMap)

type AxisValue = axisMap.AxisValue

export type Identity = Core.MeasurementIdentity

export type Measurer = {
	-- Call whenever the slot's identity changes (content re-bound).
	scheduleSettle: () -> (),
	getPendingCount: () -> number,
	disconnect: () -> (),
}

local Measurer = {}

function Measurer.attach(
	options: {
		instance: GuiObject,
		axis: AxisValue,
		-- The slot's current identity; nil while vacant. Re-fetched at
		-- Heartbeat fire time for the identity check.
		getIdentity: () -> Identity?,
		onItemMeasured: (identity: Identity, length: number) -> (),
	}
): Measurer
	local instance = options.instance
	local axis: AxisValue = options.axis
	local getIdentity = options.getIdentity
	local onItemMeasured = options.onItemMeasured

	local pendingHeartbeats: { [RBXScriptConnection]: true } = {}
	local pendingByGeneration: {
		[number]: {
			[number | string | boolean]: { [number]: RBXScriptConnection? },
		},
	} =
		{}

	local function scheduleSettle()
		local currentIdentity = getIdentity()
		if currentIdentity == nil then
			return
		end
		local pendingByIndex = pendingByGeneration[currentIdentity.assignmentGeneration]
		if pendingByIndex == nil then
			pendingByIndex = {}
			pendingByGeneration[currentIdentity.assignmentGeneration] = pendingByIndex
		end
		local identityIndex: number | string | boolean = currentIdentity.itemIndex
			or currentIdentity.pinnedPosition
			or false
		if identityIndex == false then
			identityIndex = (currentIdentity :: any).index or false
		end
		local pendingByRevision = pendingByIndex[identityIndex]
		if pendingByRevision == nil then
			pendingByRevision = {}
			pendingByIndex[identityIndex] = pendingByRevision
		end
		if pendingByRevision[currentIdentity.itemRevision] ~= nil then
			return
		end
		local scheduledItemKey = currentIdentity.itemKey
		local scheduledItemIndex = currentIdentity.itemIndex
		local scheduledGeneration = currentIdentity.assignmentGeneration
		local scheduledRevision = currentIdentity.itemRevision
		local scheduledPinnedPosition = currentIdentity.pinnedPosition

		local connection: RBXScriptConnection
		connection = RunService.Heartbeat:Once(function()
			pendingHeartbeats[connection] = nil
			if pendingByRevision[scheduledRevision] == connection then
				pendingByRevision[scheduledRevision] = nil
				if next(pendingByRevision) == nil then
					pendingByIndex[identityIndex] = nil
					if next(pendingByIndex) == nil then
						pendingByGeneration[scheduledGeneration] = nil
					end
				end
			end

			-- Identity check at fire time (gotcha 3): if the slot was
			-- recycled since scheduling, the new identity's own settle
			-- will report — drop this one.
			local current = getIdentity()
			if
				current == nil
				or current.itemKey ~= scheduledItemKey
				or current.itemIndex ~= scheduledItemIndex
				or current.assignmentGeneration ~= scheduledGeneration
				or current.itemRevision ~= scheduledRevision
				or current.pinnedPosition ~= scheduledPinnedPosition
			then
				return
			end

			local absoluteSize = instance.AbsoluteSize
			local crossAxisLength = axisMap.crossOf(absoluteSize, axis)
			if crossAxisLength > 0 then
				-- AutomaticSize can finish propagating between property reads in
				-- this Heartbeat callback. Re-read immediately before
				-- publication so a committed React host does not report the
				-- previous occupant's main-axis length.
				onItemMeasured(current, axisMap.mainOf(instance.AbsoluteSize, axis))
			end
		end)
		pendingHeartbeats[connection] = true
		pendingByRevision[scheduledRevision] = connection
	end

	-- Collapse transient mid-layout values into one settled report
	-- (gotcha 2); the caller's unconditional scheduleSettle on identity
	-- change covers the equal-size recycle case (gotcha 1).
	local sizeConnection = instance:GetPropertyChangedSignal("AbsoluteSize"):Connect(scheduleSettle)

	local function disconnect()
		sizeConnection:Disconnect()
		for connection in pendingHeartbeats do
			connection:Disconnect()
		end
		table.clear(pendingHeartbeats)
		table.clear(pendingByGeneration)
	end

	return {
		scheduleSettle = scheduleSettle,
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
