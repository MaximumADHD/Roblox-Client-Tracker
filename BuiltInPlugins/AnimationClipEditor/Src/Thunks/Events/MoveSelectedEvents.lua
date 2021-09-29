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

local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

return function(pivot, newTick, dragContext)
	return function(store)
		local state = store:getState()
		local animationData = dragContext and dragContext.animationData or store:getState().AnimationData
		local selectedEvents = dragContext and dragContext.selectedEvents or store:getState().Status.SelectedEvents
		local displayFrameRate = state.Status.DisplayFrameRate
		local snapMode = GetFFlagUseTicks() and state.Status.SnapMode or nil

		if not (animationData and animationData.Events) then
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
		local newData = Cryo.Dictionary.join({}, animationData)
		newData.Events = deepCopy(newData.Events)

		local events = newData.Events

		local selectedTicks = Cryo.Dictionary.keys(selectedEvents)
		table.sort(selectedTicks)
		local delta = newTick - pivot

		local newSelectedEvents = deepCopy(selectedEvents)

		local earliestTick, latestTick = AnimationData.getEventBounds(newData, selectedEvents)

		if delta < 0 then
			-- Moving backwards, iterate through selection left to right to avoid overwriting
			for _, tick in ipairs(selectedTicks) do
				local insertTick = tick + delta
				if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.None then
					insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
				end
				insertTick = math.clamp(insertTick, tick - earliestTick, maxLength - (latestTick - tick))
				AnimationData.moveEvents(events, tick, insertTick)

				newSelectedEvents[tick] = nil
				newSelectedEvents[insertTick] = true
			end
		else
			-- Moving forwards, iterate through selection right to left to avoid overwriting
			for index = #selectedTicks, 1, -1 do
				local tick = selectedTicks[index]
				local insertTick = tick + delta
				if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.None then
					insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
				end
				insertTick = math.clamp(insertTick, tick - earliestTick, maxLength - (latestTick - tick))
				AnimationData.moveEvents(events, tick, insertTick)

				newSelectedEvents[tick] = nil
				newSelectedEvents[insertTick] = true
			end
		end

		store:dispatch(SetSelectedEvents(newSelectedEvents))
		store:dispatch(UpdateAnimationData(newData))
	end
end