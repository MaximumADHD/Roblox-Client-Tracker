--[[
	Moves all events that are selected such that the pivot
	moves to newTick, and all other frames maintain their position
	relative to the pivot.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

local GetFFlagRealtimeChanges = require(Plugin.LuaFlags.GetFFlagRealtimeChanges)
local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

return function(pivot, newTick, dragContext)
	return function(store)
		local state = store:getState()
		local animationData = (GetFFlagRealtimeChanges() and dragContext) and dragContext.animationData or store:getState().AnimationData
		local selectedEvents = (GetFFlagRealtimeChanges() and dragContext) and dragContext.selectedEvents or store:getState().Status.SelectedEvents
		local displayFrameRate = state.Status.DisplayFrameRate
		local snapMode = GetFFlagUseTicks() and state.Status.SnapMode or nil

		if not animationData or (GetFFlagRealtimeChanges() and not animationData.Events) then
			return
		end

		local maxLength
		if GetFFlagUseTicks() then
			maxLength = Constants.MAX_ANIMATION_LENGTH
		else
			maxLength = AnimationData.Metadata and animationData.Metadata.FrameRate
				and AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
				or AnimationData.getMaximumLength(30)
		end

		-- Avoid a deepCopy of the entire animationData
		local newData = GetFFlagRealtimeChanges() and Cryo.Dictionary.join({}, animationData) or deepCopy(animationData)

		if GetFFlagRealtimeChanges() then
			newData.Events = deepCopy(newData.Events)
		end

		local events = newData.Events
		if not GetFFlagRealtimeChanges() then  -- If flag is on, we bailed out before the copy
			if events == nil then
				return
			end
		end

		local selectedTicks = Cryo.Dictionary.keys(selectedEvents)
		table.sort(selectedTicks)
		local delta = newTick - pivot

		local newSelectedEvents = deepCopy(selectedEvents)

		local earliestTick, latestTick
		if GetFFlagRealtimeChanges() then
			earliestTick, latestTick = AnimationData.getEventBounds(newData, selectedEvents)
		end

		if delta < 0 then
			-- Moving backwards, iterate through selection left to right to avoid overwriting
			for _, tick in ipairs(selectedTicks) do
				local insertTick = tick + delta
				if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.Disabled then
					insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
				end
				if GetFFlagRealtimeChanges() then
					insertTick = math.clamp(insertTick, tick - earliestTick, maxLength - (latestTick - tick))
				end
				AnimationData.moveEvents(events, tick, insertTick)

				newSelectedEvents[tick] = nil
				newSelectedEvents[insertTick] = true
			end
		else
			-- Moving forwards, iterate through selection right to left to avoid overwriting
			for index = #selectedTicks, 1, -1 do
				local tick = selectedTicks[index]
				local insertTick = tick + delta
				if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.Disabled then
					insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
				end
				if GetFFlagRealtimeChanges() then
					insertTick = math.clamp(insertTick, tick - earliestTick, maxLength - (latestTick - tick))
				end
				AnimationData.moveEvents(events, tick, insertTick)

				newSelectedEvents[tick] = nil
				newSelectedEvents[insertTick] = true
			end
		end

		store:dispatch(SetSelectedEvents(newSelectedEvents))
		store:dispatch(UpdateAnimationData(newData))
	end
end