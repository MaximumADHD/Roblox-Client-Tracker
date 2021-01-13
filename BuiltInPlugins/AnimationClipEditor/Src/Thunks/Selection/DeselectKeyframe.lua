--[[
	Removes a single keyframe from the current selection.

	If there are no more selected keyframes at the track, then the entire
	track is also removed from the selection. If there are no selected
	tracks for an instance, that instance is removed from the selection.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

return function(instanceName, trackName, frame)
	return function(store)
		local state = store:getState()
		local status = state.Status
		if not status then
			return
		end

		local selectedKeyframes = status.SelectedKeyframes
		if not selectedKeyframes then
			selectedKeyframes = {}
		end

		local newInstance = selectedKeyframes[instanceName] ~= nil and selectedKeyframes[instanceName] or {}
		local newTrack = newInstance[trackName] ~= nil and newInstance[trackName] or {}

		if newTrack[frame] then
			local newKeyframes = Cryo.Dictionary.join(newTrack, {
				[frame] = Cryo.None,
			})

			if isEmpty(newKeyframes) then
				newInstance = Cryo.Dictionary.join(newInstance, {
					[trackName] = Cryo.None,
				})
			else
				newInstance = Cryo.Dictionary.join(newInstance, {
					[trackName] = newKeyframes,
				})
			end

			if isEmpty(newInstance) then
				selectedKeyframes = Cryo.Dictionary.join(selectedKeyframes, {
					[instanceName] = Cryo.None,
				})
			else
				selectedKeyframes = Cryo.Dictionary.join(selectedKeyframes, {
					[instanceName] = newInstance,
				})
			end

			store:dispatch(SetSelectedKeyframes(selectedKeyframes))
		end
	end
end