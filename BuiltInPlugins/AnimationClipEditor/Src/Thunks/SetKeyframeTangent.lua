--[[
	Used to modify a keyframe's tangents while keeping its other values intact.
]]

local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local SetKeyframeData = require(Plugin.Src.Thunks.SetKeyframeData)

return function(instanceName: string, path: {string}, tck: number, side: string, slope: number): (any) -> ()
	return function(store: any): ()
		local animationData = store:getState().AnimationData
		if not animationData then
			return
		end

		local track = AnimationData.getTrack(animationData, instanceName, path)
		if not track then
			return
		end

		local keyframe = track.Data[tck]
		if not keyframe then
			return
		end

		local data = {}

		if side == Constants.SLOPES.Left then
			local _, prevIndex, _ = KeyframeUtils.findNearestKeyframesProperly(track.Keyframes, tck-1)
			if prevIndex then
				local prevTick = track.Keyframes[prevIndex]
				local prevData = {
					InterpolationMode = Enum.KeyInterpolationMode.Cubic
				}
				store:dispatch(SetKeyframeData(instanceName, path, prevTick, prevData))
			end
			data.LeftSlope = slope
		else
			data.InterpolationMode = Enum.KeyInterpolationMode.Cubic
			data.RightSlope = slope
		end

		store:dispatch(SetKeyframeData(instanceName, path, tck, data))
	end
end