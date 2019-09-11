--[[
	Used to modify a all selected keyframe's data values
	while keeping their other values intact.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function(newKeyframeData)
	return function(store)
		local state = store:getState()
		local selectedKeyframes = state.Status.SelectedKeyframes
		local animationData = state.AnimationData
		if not (animationData and selectedKeyframes) then
			return
		end

		local newData = deepCopy(animationData)

		for instanceName, instance in pairs(selectedKeyframes) do
			local dataInstance = newData.Instances[instanceName]

			for trackName, _ in pairs(instance) do
				local keyframes = Cryo.Dictionary.keys(instance[trackName])
				local track = dataInstance.Tracks[trackName]

				for _, keyframe in ipairs(keyframes) do
					if track.Data[keyframe] then
						AnimationData.setKeyframeData(track, keyframe, newKeyframeData)
					end
				end
			end
		end

		store:dispatch(UpdateAnimationData(newData))
	end
end