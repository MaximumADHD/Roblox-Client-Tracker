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
local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

return function(instanceName, path, trackType, tck, value, analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local track = AnimationData.getTrack(animationData, instanceName, path)

		if track == nil then
			local topTrackName = path[1]
			if GetFFlagCurveEditor() then
				local newTrackType = if trackType == Constants.TRACK_TYPES.Facs
					then Constants.TRACK_TYPES.Facs
					else Constants.TRACK_TYPES.CFrame
				store:dispatch(AddTrack(instanceName, topTrackName, newTrackType, nil, nil, analytics))
			else
				if trackType == Constants.TRACK_TYPES.Facs then
					store:dispatch(AddTrack(instanceName, topTrackName, trackType, analytics))
				else
					store:dispatch(AddTrack(instanceName, topTrackName, Constants.TRACK_TYPES.CFrame, analytics))
				end
			end
			local keyframeData = {
				Value = value
			}
			if AnimationData.isChannelAnimation(animationData) then
				keyframeData.InterpolationMode = Enum.KeyInterpolationMode.Cubic
			else
				keyframeData.EasingStyle = Enum.PoseEasingStyle.Linear
				keyframeData.EasingDirection = Enum.PoseEasingDirection.In
			end
			store:dispatch(AddKeyframe(instanceName, path, trackType, tck, keyframeData, analytics))
		else
			local trackData = track.Data

			if trackData and trackData[tck] then
				store:dispatch(SetKeyframeData(instanceName, path, tck, {
					Value = value,
				}))
			else
				local keyframeData = {
					Value = value
				}
				if track.IsCurveTrack then
					keyframeData.InterpolationMode = Enum.KeyInterpolationMode.Cubic
				else
					keyframeData.EasingStyle = Enum.PoseEasingStyle.Linear
					keyframeData.EasingDirection = Enum.PoseEasingDirection.In
				end

				store:dispatch(AddKeyframe(instanceName, path, trackType, tck, keyframeData, analytics))
			end
		end
		store:dispatch(StepAnimation(tck))
	end
end
