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

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

if GetFFlagChannelAnimations() then
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
else
	local function wrappee(instanceName, trackName, trackType, tck, value, analytics)
		return function(store)
			local state = store:getState()
			local animationData = state.AnimationData
			local editorMode = state.Status and state.Status.EditorMode
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
				if GetFFlagFacialAnimationSupport() then
					store:dispatch(AddTrack(instanceName, trackName, trackType, analytics))
				else
					store:dispatch(AddTrack(instanceName, trackName, analytics))
				end
				AnimationData.addTrack(tracks, trackName, trackType)
			end
			local track = tracks[trackName]
			local trackData = track.Data

			if trackData[tck] == nil then
				AnimationData.addKeyframe_deprecated(track, tck, value)

				-- if no base pose kf exists at time 0, create one now
				if tck ~= 0 and trackData[0] == nil then
					if GetFFlagFacialAnimationSupport() then
						AnimationData.addDefaultKeyframe(track, 0, trackType)
					else
						AnimationData.addKeyframe_deprecated(track, 0, CFrame.new())
					end
				end

				store:dispatch(UpdateAnimationData(newData))

				if analytics then
					analytics:report("onAddKeyframe", trackName, editorMode)
				end
			end
		end
	end

	if GetFFlagFacialAnimationSupport() then
		return function(instanceName, trackName, trackType, tck, value, analytics)
			return wrappee(instanceName, trackName, trackType, tck, value, analytics)
		end
	else
		return function(instanceName, trackName, tck, value, analytics)
			return wrappee(instanceName, trackName, nil, tck, value, analytics)
		end
	end
end
