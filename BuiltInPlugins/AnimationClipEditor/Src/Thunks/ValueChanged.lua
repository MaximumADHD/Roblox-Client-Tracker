--[[
	A thunk that should be called when the user moves a bone or
	otherwise changes a value of a keyframe. It will choose whether
	to add a new keyframe or modify the value of an existing keyframe
	if one exists at the given frame.
]]

local Plugin = script.Parent.Parent.Parent

local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
local SetKeyframeData = require(Plugin.Src.Thunks.SetKeyframeData)
local AddTrack = require(Plugin.Src.Thunks.AddTrack)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)

return function(instanceName, trackName, frame, value)
	return function(store)
		local animationData = store:getState().AnimationData
		if not animationData then
			return
		end

		local instance = animationData.Instances[instanceName]
		if instance == nil then
			return
		end

		local tracks = instance.Tracks
		if tracks == nil then
			return
		end

		local track = tracks[trackName]
		if track == nil then
			store:dispatch(AddTrack(instanceName, trackName))
			store:dispatch(AddKeyframe(instanceName, trackName, frame, value))
			store:dispatch(StepAnimation(frame))
			return
		end

		local trackData = track.Data

		if trackData and trackData[frame] then
			store:dispatch(SetKeyframeData(instanceName, trackName, frame, {
				Value = value,
			}))
		else
			store:dispatch(AddKeyframe(instanceName, trackName, frame, value))
		end

		store:dispatch(StepAnimation(frame))
	end
end