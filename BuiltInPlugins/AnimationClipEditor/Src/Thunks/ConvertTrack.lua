--[[
	Convert a track to a new type, specifically between Quaternions and Euler Angles tracks.
]]
local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local Cryo = require(Plugin.Packages.Cryo)

local SetTracks = require(Plugin.Src.Actions.SetTracks)

local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local PathUtils = require(Plugin.Src.Util.PathUtils)
local Templates = require(Plugin.Src.Util.Templates)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

return function(instanceName: string, path: PathUtils.Path, newType: string, analytics: any): ({[string]: any}) -> ()
	return function(store: {[string]: any})
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData or not animationData.Instances[instanceName] then
			return
		end

		local newTracks = deepCopy(state.Status.Tracks)
		local trackEntry = TrackUtils.findTrackEntry(newTracks, path)

		local newData = Cryo.Dictionary.join(animationData)
		newData.Instances = Cryo.Dictionary.join(newData.Instances)
		newData.Instances[instanceName] = Cryo.Dictionary.join({}, newData.Instances[instanceName])
		newData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, newData.Instances[instanceName].Tracks)
		newData.Instances[instanceName].Tracks[path[1]] = deepCopy(newData.Instances[instanceName].Tracks[path[1]])

		local track = AnimationData.getTrack(newData, instanceName, path)
		if track ~= nil and track.Data ~= nil then
			if track.Type == Constants.TRACK_TYPES.Quaternion and newType == Constants.TRACK_TYPES.EulerAngles then
				-- Create components and copy the ticks
				track.Components = {}
				for _, componentName in ipairs(Constants.COMPONENT_TRACK_TYPES[Constants.TRACK_TYPES.EulerAngles]._Order) do
					local componentTrack = Templates.track(Constants.COMPONENT_TRACK_TYPES[Constants.TRACK_TYPES.EulerAngles][componentName])

					componentTrack.Keyframes = Cryo.List.join(track.Keyframes)
					componentTrack.Data = {}
					componentTrack.IsCurveTrack = true
					track.Components[componentName] = componentTrack
				end

				for index, tck in ipairs(track.Keyframes) do
					local keyframe = track.Data[tck]
					local value = Vector3.new(keyframe.Value:ToEulerAnglesXYZ())
					-- We will need the prevValue and the nextValue for the 3 components, might as well cache it.
					local prevValue = nil
					local nextValue = nil

					for _, componentName, _ in ipairs(Constants.COMPONENT_TRACK_TYPES[Constants.TRACK_TYPES.EulerAngles]._Order) do
						local newKeyframe = Cryo.Dictionary.join(keyframe)
						newKeyframe.Value = value[componentName]
						newKeyframe.InterpolationMode = keyframe.InterpolationMode

						-- Adjust the slopes by multiplying them by the value difference with the previous (left) or the next (right) key
						-- For quaternion rotations, the slope is calculated to go from 0 to 1. For Euler angles, we need to adjust them to go
						-- from vl to v (left) or v to vr (right)
						if keyframe.LeftSlope ~= nil then
							if not prevValue then
								local prevTick = track.Keyframes[index-1]
								if prevTick then
									local prevKeyframe = track.Data[prevTick]
									prevValue = Vector3.new(prevKeyframe.Value:ToEulerAnglesXYZ())
								end
							end
							if prevValue then
								local delta = value[componentName] - prevValue[componentName]
								newKeyframe.LeftSlope = newKeyframe.LeftSlope * delta
							else
								-- This should not happen, as keyframe.leftSlope should already be nil for the first keyframe
								newKeyframe.LeftSlope = nil
							end
						end
						if keyframe.RightSlope ~= nil then
							if not nextValue then
								local nextTick = track.Keyframes[index+1]
								if nextTick then
									local nextKeyframe = track.Data[nextTick]
									nextValue = Vector3.new(nextKeyframe.Value:ToEulerAnglesXYZ())
								end
							end
							if nextValue then
								local delta = nextValue[componentName] - value[componentName]
								newKeyframe.RightSlope = newKeyframe.RightSlope * delta
							else
								-- This should not happen, as keyframe.rightSlope should already be nil for the last keyframe
								newKeyframe.RightSlope = nil
							end
						end

						track.Components[componentName].Data[tck] = newKeyframe
					end
				end

				track.Keyframes = nil
				track.Data = nil
				track.Type = Constants.TRACK_TYPES.EulerAngles

				trackEntry.Type = Constants.TRACK_TYPES.EulerAngles
				TrackUtils.createTrackListEntryComponents(trackEntry, trackEntry.Instance, Constants.TRACK_TYPES.EulerAngles)
				store:dispatch(UpdateAnimationData(newData))
				store:dispatch(SetTracks(newTracks))
			end
		end
	end
end
