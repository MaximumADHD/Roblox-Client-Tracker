--[[
	Adds a single keyframe at the given track and frame.
	Sets the keyframe's value to the given value.
]]

local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local AddTrack = require(Plugin.Src.Thunks.AddTrack)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function(instanceName, trackName, frame, value)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData then
			return
		end

		local newData = deepCopy(animationData)

		local instance = newData.Instances[instanceName]
		if instance == nil then
			return
		end

		-- Add the track if it does not exist
		local tracks = instance.Tracks
		if tracks[trackName] == nil then
			store:dispatch(AddTrack(instanceName, trackName))
			AnimationData.addTrack(tracks, trackName)
		end
		local track = tracks[trackName]
		local trackData = track.Data

		if trackData[frame] == nil then
			AnimationData.addKeyframe(track, frame, value)
			store:dispatch(UpdateAnimationData(newData))

			if state.Analytics then
				state.Analytics:onAddKeyframe(trackName, frame)
			end
		end
	end
end