--[[
	Splits a track at a given tick.
	The value and slopes are evaluated so that the initial shape of the curve is maintained.
	For cubic Quaternion tracks, splitting a track requires adjusting the right slope of the previous key,
	and the left slope of the next key.
	If the track does not exist it simply calls the AddKeyframe thunk with the default value.
]]
local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local Constants = require(Plugin.Src.Util.Constants)
local Cryo = require(Plugin.Packages.Cryo)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local AddTrack = require(Plugin.Src.Thunks.AddTrack)
local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

return function(instanceName, path, trackType, tck, analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData or not animationData.Instances[instanceName] then
			return
		end

		local track = AnimationData.getTrack(animationData, instanceName, path)
		local exactIndex, previousIndex, nextIndex

		-- Find neighbors
		if track then
			exactIndex, previousIndex, nextIndex = KeyframeUtils.findNearestKeyframesProperly(track.Keyframes, tck)
			if exactIndex then
				-- There already is a keyframe at that tick, no need to split
				return
			end
		end

		if not track or not previousIndex or not nextIndex then
			-- There is no track, or we don't have two neighbors. We cannot split anything.
			-- We add a default keyframe.
			local value = KeyframeUtils.getDefaultValue(trackType)
			local keyframeData = {
				Value = value,
				InterpolationMode = Enum.KeyInterpolationMode.Cubic
			}
			store:dispatch(AddKeyframe(instanceName, path, trackType, tck, keyframeData, analytics))
			return
		end

		-- We have a track, we have two neighbors
		local value = KeyframeUtils.getValue(track, tck)
		local prevKeyframe = track.Data[track.Keyframes[previousIndex]]
		local nextKeyframe = track.Data[track.Keyframes[nextIndex]]
		local interpolationMode = prevKeyframe.InterpolationMode
		local keyframeData
		local leftSlope, rightSlope

		if interpolationMode == Enum.KeyInterpolationMode.Cubic then
			leftSlope, rightSlope = KeyframeUtils.getSlopes(track, tck)

			-- TODO (TBD): For Cubic Quaternion tracks, we have to adjust the right slope of
			-- the previous keyframe, and the left slope of the next keyframe
		end

		keyframeData = {
			Value = value,
			InterpolationMode = interpolationMode,
			LeftSlope = leftSlope,
			RightSlope = rightSlope
		}

		store:dispatch(AddKeyframe(instanceName, path, trackType, tck, keyframeData, analytics))
	end
end