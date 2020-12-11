--[[
	Moves all events that are selected such that the pivot
	moves to newFrame, and all other frames maintain their position
	relative to the pivot.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local deepCopy = require(Plugin.SrcDeprecated.Util.deepCopy)
local AnimationData = require(Plugin.SrcDeprecated.Util.AnimationData)
local SetSelectedEvents = require(Plugin.SrcDeprecated.Actions.SetSelectedEvents)
local UpdateAnimationData = require(Plugin.SrcDeprecated.Thunks.UpdateAnimationData)

return function(pivot, newFrame)
	return function(store)
		local animationData = store:getState().AnimationData
		local selectedEvents = store:getState().Status.SelectedEvents
		if not animationData then
			return
		end

		local newData = deepCopy(animationData)

		local events = newData.Events
		if events == nil then
			return
		end

		local selectedFrames = Cryo.Dictionary.keys(selectedEvents)
		table.sort(selectedFrames)
		local delta = newFrame - pivot

		local newSelectedEvents = deepCopy(selectedEvents)

		if delta < 0 then
			-- Moving backwards, iterate through selection left to right to avoid overwriting
			for _, frame in ipairs(selectedFrames) do
				local insertFrame = frame + delta
				AnimationData.moveEvents(events, frame, insertFrame)

				newSelectedEvents[frame] = nil
				newSelectedEvents[insertFrame] = true
			end
		else
			-- Moving forwards, iterate through selection right to left to avoid overwriting
			for index = #selectedFrames, 1, -1 do
				local frame = selectedFrames[index]
				local insertFrame = frame + delta
				AnimationData.moveEvents(events, frame, insertFrame)

				newSelectedEvents[frame] = nil
				newSelectedEvents[insertFrame] = true
			end
		end

		store:dispatch(SetSelectedEvents(newSelectedEvents))
		store:dispatch(UpdateAnimationData(newData))
	end
end