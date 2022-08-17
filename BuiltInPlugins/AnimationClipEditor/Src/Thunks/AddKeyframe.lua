--[[
	Adds a single keyframe at the given track and frame.
	Sets the keyframe's value to the given value.
]]
local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local Constants = require(Plugin.Src.Util.Constants)
local Cryo = require(Plugin.Packages.Cryo)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local AddTrack = require(Plugin.Src.Thunks.AddTrack)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

return function(instanceName, path, trackType, tck, keyframeData, analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local editorMode = state.Status and state.Status.EditorMode
		if not animationData or not animationData.Instances[instanceName] then
			return
		end

		local newData = Cryo.Dictionary.join({}, animationData)
		newData.Instances = Cryo.Dictionary.join({}, newData.Instances)
		newData.Instances[instanceName] = Cryo.Dictionary.join({}, newData.Instances[instanceName])
		newData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, newData.Instances[instanceName].Tracks)
		newData.Instances[instanceName].Tracks[path[1]] = deepCopy(newData.Instances[instanceName].Tracks[path[1]])

		local tracks = newData.Instances[instanceName].Tracks
		local track = AnimationData.getTrack(newData, instanceName, path)
		if track == nil then
			local rotationType = state.Status and state.Status.DefaultRotationType or Constants.DEFAULT_ROTATION_TYPE
			local eulerAnglesOrder = state.Status and state.Status.DefaultEulerAnglesOrder or Enum.RotationOrder.XYZ

			local topTrackType = Constants.TRACK_TYPES.CFrame
			if trackType == Constants.TRACK_TYPES.Facs then
				topTrackType = Constants.TRACK_TYPES.Facs
			end

			if GetFFlagCurveEditor() then
				store:dispatch(AddTrack(instanceName, path[1], topTrackType, rotationType, eulerAnglesOrder, analytics))
			else
				store:dispatch(AddTrack(instanceName, path[1], topTrackType, analytics))
			end

			AnimationData.addTrack(tracks, path[1], topTrackType, AnimationData.isChannelAnimation(newData), rotationType, eulerAnglesOrder)
			track = AnimationData.getTrack(newData, instanceName, path)
		end

		local trackData = track.Data
		if trackData[tck] == nil then
			AnimationData.addKeyframe(track, tck, keyframeData)
			if tck ~= 0 and trackData[0] == nil then
				AnimationData.addDefaultKeyframe(track, 0, trackType)
			end

			store:dispatch(UpdateAnimationData(newData))

			if analytics then
				analytics:report("onAddKeyframe", path[1], editorMode)
			end
		end
	end
end
