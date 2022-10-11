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

return function(pivot, newTick, dragContext)
	return function(store)
		local state = store:getState()
		local animationData = dragContext and dragContext.animationData or store:getState().AnimationData
		local selectedEvents = dragContext and dragContext.selectedEvents or store:getState().Status.SelectedEvents
		local frameRate = state.Status.FrameRate
		local snapMode = state.Status.SnapMode

		if not (animationData and animationData.Events) then
			return
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
			for _, tck in ipairs(selectedTicks) do
				local insertTick = tck + delta
				if snapMode ~= Constants.SNAP_MODES.None then
					insertTick = KeyframeUtils.getNearestFrame(insertTick, frameRate)
				end
				insertTick =
					math.clamp(insertTick, tck - earliestTick, Constants.MAX_ANIMATION_LENGTH - (latestTick - tck))
				AnimationData.moveEvents(events, tck, insertTick)

				newSelectedEvents[tck] = nil
				newSelectedEvents[insertTick] = true
			end
		else
			-- Moving forwards, iterate through selection right to left to avoid overwriting
			for index = #selectedTicks, 1, -1 do
				local tck = selectedTicks[index]
				local insertTick = tck + delta
				if snapMode ~= Constants.SNAP_MODES.None then
					insertTick = KeyframeUtils.getNearestFrame(insertTick, frameRate)
				end
				insertTick =
					math.clamp(insertTick, tck - earliestTick, Constants.MAX_ANIMATION_LENGTH - (latestTick - tck))
				AnimationData.moveEvents(events, tck, insertTick)

				newSelectedEvents[tck] = nil
				newSelectedEvents[insertTick] = true
			end
		end

		store:dispatch(SetSelectedEvents(newSelectedEvents))
		store:dispatch(UpdateAnimationData(newData))
	end
end
