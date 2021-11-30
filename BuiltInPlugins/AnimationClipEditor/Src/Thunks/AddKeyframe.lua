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

if GetFFlagChannelAnimations() then
	return function(instanceName, path, trackType, tick, keyframeData, analytics)
		return function(store)
			local state = store:getState()
			local animationData = state.AnimationData
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

				local topTrackType = Constants.TRACK_TYPES.CFrame
				if trackType == Constants.TRACK_TYPES.Facs then
					topTrackType = Constants.TRACK_TYPES.Facs
				end

				store:dispatch(AddTrack(instanceName, path[1], topTrackType, analytics))
				AnimationData.addTrack(tracks, path[1], topTrackType, AnimationData.isChannelAnimation(newData), rotationType)
				track = AnimationData.getTrack(newData, instanceName, path)
			end

			local trackData = track.Data
			if trackData[tick] == nil then
				AnimationData.addKeyframe(track, tick, keyframeData)
				if tick ~= 0 and trackData[0] == nil then
					AnimationData.addDefaultKeyframe(track, 0, trackType)
				end

				store:dispatch(UpdateAnimationData(newData))

				if analytics then
					analytics:report("onAddKeyframe", path[1], tick)
				end
			end
		end
	end
else
	local function wrappee(instanceName, trackName, trackType, tick, value, analytics)
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
				if GetFFlagFacialAnimationSupport() then
					store:dispatch(AddTrack(instanceName, trackName, trackType, analytics))
				else
					store:dispatch(AddTrack(instanceName, trackName, analytics))
				end
				AnimationData.addTrack(tracks, trackName, trackType)
			end
			local track = tracks[trackName]
			local trackData = track.Data

			if trackData[tick] == nil then
				AnimationData.addKeyframe_deprecated(track, tick, value)

				-- if no base pose kf exists at time 0, create one now
				if tick ~= 0 and trackData[0] == nil then
					if GetFFlagFacialAnimationSupport() then
						AnimationData.addDefaultKeyframe(track, 0, trackType)
					else
						AnimationData.addKeyframe_deprecated(track, 0, CFrame.new())
					end
				end

				store:dispatch(UpdateAnimationData(newData))

				if analytics then
					analytics:report("onAddKeyframe", trackName, tick)
				end
			end
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