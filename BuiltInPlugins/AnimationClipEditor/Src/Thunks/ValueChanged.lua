--[[
	A thunk that should be called when the user moves a bone or
	otherwise changes a value of a keyframe. It will choose whether
	to add a new keyframe or modify the value of an existing keyframe
	if one exists at the given tick.
]]

local Plugin = script.Parent.Parent.Parent

local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
local SetKeyframeData = require(Plugin.Src.Thunks.SetKeyframeData)
local AddTrack = require(Plugin.Src.Thunks.AddTrack)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)

local function wrappee(instanceName, trackName, trackType, tick, value, analytics)
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
			if GetFFlagFacialAnimationSupport() then
				store:dispatch(AddTrack(instanceName, trackName, trackType, analytics))
				store:dispatch(AddKeyframe(instanceName, trackName, trackType, tick, value, analytics))
			else
				store:dispatch(AddTrack(instanceName, trackName, analytics))
				store:dispatch(AddKeyframe(instanceName, trackName, tick, value, analytics))
			end

			store:dispatch(StepAnimation(tick))
			return
		end

		local trackData = track.Data

		if trackData and trackData[tick] then
			store:dispatch(SetKeyframeData(instanceName, trackName, tick, {
				Value = value,
			}))
		else
			if GetFFlagFacialAnimationSupport() then
				store:dispatch(AddKeyframe(instanceName, trackName, trackType, tick, value, analytics))
			else
				store:dispatch(AddKeyframe(instanceName, trackName, tick, value, analytics))
			end
		end

		store:dispatch(StepAnimation(tick))
	end
end

if GetFFlagFacialAnimationSupport() then
	return function(instanceName, trackName, trackType, tick, value, analytics)
		return wrappee(instanceName, trackName, trackType, tick, value, analytics)
	end
else
	return function(instanceName, trackName, tick, value, analytics)
		return wrappee(instanceName, trackName, nil, tick, value, analytics)
	end
end