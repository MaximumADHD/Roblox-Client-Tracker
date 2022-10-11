--[[
	Splits a track at a given tick.
	The value and slopes are evaluated so that the initial shape of the curve is maintained.
	For cubic Quaternion tracks, splitting a track requires adjusting the right slope of the previous key,
	and the left slope of the next key.
	If the track does not exist it simply calls the AddKeyframe thunk with the default value.
]]
local Plugin = script.Parent.Parent.Parent

local AnimationData = require(Plugin.Src.Util.AnimationData)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)

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

		local keyframeData

		if not track or not previousIndex then
			-- There is no track, or we don't have a previous key.
			-- We add a default keyframe.
			local value = KeyframeUtils.getDefaultValue(trackType)
			keyframeData = {
				Value = value,
				InterpolationMode = Enum.KeyInterpolationMode.Cubic,
			}
		else
			local value = KeyframeUtils.getValue(track, tck)
			local prevKeyframe = track.Data[track.Keyframes[previousIndex]]
			local interpolationMode = prevKeyframe.InterpolationMode

			local leftSlope, rightSlope

			if interpolationMode == Enum.KeyInterpolationMode.Cubic then
				leftSlope, rightSlope = KeyframeUtils.getSlopes(track, tck)
			end

			keyframeData = {
				Value = value,
				InterpolationMode = interpolationMode,
				LeftSlope = leftSlope,
				RightSlope = rightSlope,
			}
		end

		store:dispatch(AddKeyframe(instanceName, path, trackType, tck, keyframeData, analytics))
	end
end
