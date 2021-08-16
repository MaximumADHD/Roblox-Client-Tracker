--[[
	Used to modify a keyframe's data values
	while keeping its other values intact.

	The newData param accepts a value table which is merged
	with the data in the given keyframe.
]]

local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)

return function(instanceName, trackName, tick, newKeyframeData)
	return function(store)
		local animationData = store:getState().AnimationData
		if not animationData then
			return
		end

		local newData = deepCopy(animationData)

		local instance = newData.Instances[instanceName]
		if instance == nil then
			return
		end

		local tracks = instance.Tracks
		if tracks == nil then
			return
		end

		local track = tracks[trackName]
		if track == nil then
			return
		end

		local trackData = track.Data

		if trackData and trackData[tick] then
			AnimationData.setKeyframeData(track, tick, newKeyframeData)
			store:dispatch(SetAnimationData(newData))
		end
	end
end