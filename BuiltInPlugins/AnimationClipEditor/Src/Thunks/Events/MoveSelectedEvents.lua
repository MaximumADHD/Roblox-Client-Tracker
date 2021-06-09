--[[
	Moves all events that are selected such that the pivot
	moves to newFrame, and all other frames maintain their position
	relative to the pivot.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local GetFFlagRealtimeChanges = require(Plugin.LuaFlags.GetFFlagRealtimeChanges)

return function(pivot, newFrame, dragContext)
	return function(store)
		local animationData = (GetFFlagRealtimeChanges() and dragContext) and dragContext.animationData or store:getState().AnimationData
		local selectedEvents = (GetFFlagRealtimeChanges() and dragContext) and dragContext.selectedEvents or store:getState().Status.SelectedEvents
		if not animationData or (GetFFlagRealtimeChanges() and not animationData.Events) then
			return
		end

		local maxLength = animationData.Metadata and animationData.Metadata.FrameRate
			and AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
			or AnimationData.getMaximumLength(30)

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

		local selectedFrames = Cryo.Dictionary.keys(selectedEvents)
		table.sort(selectedFrames)
		local delta = newFrame - pivot

		local newSelectedEvents = deepCopy(selectedEvents)

		local earliestFrame, latestFrame
		if GetFFlagRealtimeChanges() then
			earliestFrame, latestFrame = AnimationData.getEventBounds(newData, selectedEvents)
		end

		if delta < 0 then
			-- Moving backwards, iterate through selection left to right to avoid overwriting
			for _, frame in ipairs(selectedFrames) do
				local insertFrame = frame + delta
				if GetFFlagRealtimeChanges() then
					insertFrame = math.clamp(insertFrame, frame - earliestFrame, maxLength - (latestFrame - frame))
				end
				AnimationData.moveEvents(events, frame, insertFrame)

				newSelectedEvents[frame] = nil
				newSelectedEvents[insertFrame] = true
			end
		else
			-- Moving forwards, iterate through selection right to left to avoid overwriting
			for index = #selectedFrames, 1, -1 do
				local frame = selectedFrames[index]
				local insertFrame = frame + delta
				if GetFFlagRealtimeChanges() then
					insertFrame = math.clamp(insertFrame, frame - earliestFrame, maxLength - (latestFrame - frame))
				end
				AnimationData.moveEvents(events, frame, insertFrame)

				newSelectedEvents[frame] = nil
				newSelectedEvents[insertFrame] = true
			end
		end

		store:dispatch(SetSelectedEvents(newSelectedEvents))
		store:dispatch(UpdateAnimationData(newData))
	end
end