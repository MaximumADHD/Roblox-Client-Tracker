--[[
	Used to modify a keyframe's data values
	while keeping its other values intact.

	The newData param accepts a value table which is merged
	with the data in the given keyframe.
]]

local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function(instanceName, path, tck, newKeyframeData)
	return function(store)
		local animationData = store:getState().AnimationData
		if not animationData or not animationData.Instances[instanceName] then
			return
		end

		local newData = Cryo.Dictionary.join({}, animationData)
		newData.Instances = Cryo.Dictionary.join({}, newData.Instances)
		newData.Instances[instanceName] = Cryo.Dictionary.join({}, newData.Instances[instanceName])
		newData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, newData.Instances[instanceName].Tracks)
		newData.Instances[instanceName].Tracks[path[1]] = deepCopy(newData.Instances[instanceName].Tracks[path[1]])

		local track = AnimationData.getTrack(newData, instanceName, path)
		if track and track.Data and track.Data[tck] then
			AnimationData.setKeyframeData(track, tck, newKeyframeData)
			store:dispatch(UpdateAnimationData(newData))
		end
	end
end
