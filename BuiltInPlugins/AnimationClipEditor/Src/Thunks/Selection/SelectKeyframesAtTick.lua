--[[
	Selects all keyframes across all tracks that are at the given tick.
	This can occur when the user selects the summary keyframe
	at the top of the dope sheet.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local SelectKeyframe = require(Plugin.Src.Thunks.Selection.SelectKeyframe)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SelectKeyframeRange = require(Plugin.Src.Thunks.Selection.SelectKeyframeRange)

return function(tck, multiSelect)
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
				store:dispatch(SelectKeyframeRange(instanceName, { trackName }, tck, tck, true))
			end
		end
	end
end
