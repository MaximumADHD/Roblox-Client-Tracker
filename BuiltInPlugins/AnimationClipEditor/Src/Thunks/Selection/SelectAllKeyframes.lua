--[[
	Selects all keyframes across all tracks.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

return function()
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData then
			return
		end

		local selectedKeyframes = {}

		for instanceName, instance in pairs(animationData.Instances) do
			selectedKeyframes[instanceName] = {}
			for trackName, track in pairs(instance.Tracks) do
				selectedKeyframes[instanceName][trackName] = {}
				for _, frame in ipairs(track.Keyframes) do
					selectedKeyframes[instanceName][trackName][frame] = true
				end
			end
		end

		store:dispatch(SetSelectedKeyframes(selectedKeyframes))
	end
end