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
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

if GetFFlagChannelAnimations() then
	return function(instanceName, path, trackType, tick, value, analytics)
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
				store:dispatch(AddKeyframe(instanceName, path, trackType, tick, keyframeData, analytics))
			else
				local trackData = track.Data

				if trackData and trackData[tick] then
					store:dispatch(SetKeyframeData(instanceName, path, tick, {
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

					store:dispatch(AddKeyframe(instanceName, path, trackType, tick, keyframeData, analytics))
				end
			end
			store:dispatch(StepAnimation(tick))
		end
	end
else
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
end
