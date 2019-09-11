--[[
	Deselects all keyframes across all tracks that are at the given frame.
	This can occur when the user selects the summary keyframe
	at the top of the dope sheet.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local DeselectKeyframe = require(Plugin.Src.Thunks.Selection.DeselectKeyframe)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

return function(frame, multiSelect)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData then
			return
		end

		if not multiSelect then
			store:dispatch(SetSelectedKeyframes({}))
		end

		for instanceName, instance in pairs(animationData.Instances) do
			for trackName, _ in pairs(instance.Tracks) do
				store:dispatch(DeselectKeyframe(instanceName, trackName, frame, true))
			end
		end
	end
end