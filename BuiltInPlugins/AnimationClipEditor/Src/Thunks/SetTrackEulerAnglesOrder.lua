--!strict
--[[
	Used to modify the Euler Angles order of a Rotation Track.
]]

local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local PathUtils = require(Plugin.Src.Util.PathUtils)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local GetFFlagFixEulerAnglesMenu = require(Plugin.LuaFlags.GetFFlagFixEulerAnglesMenu)

return function(
		instanceName: string,
		path: PathUtils.Path,
		eulerAnglesOrder: Enum.RotationOrder
	): ({[string]: any}) -> ()

	return function(store: { [string]: any }): ()
		local animationData = store:getState().AnimationData

		local track = AnimationData.getTrack(animationData, instanceName, path)
		if not GetFFlagFixEulerAnglesMenu() then
			if
				not track
				or (not track.Type) == Constants.TRACK_TYPES.EulerAngles
				or track.EulerAnglesOrder == eulerAnglesOrder
			then
				return nil
			end
		else
			if
				track
				and (track.Type ~= Constants.TRACK_TYPES.EulerAngles or track.EulerAnglesOrder == eulerAnglesOrder)
			then
				return nil
			end
		end

		local newData = Cryo.Dictionary.join({}, animationData)
		local newInstances = Cryo.Dictionary.join({}, newData.Instances)
		local newInstance = Cryo.Dictionary.join({}, newInstances[instanceName])
		local newTracks = Cryo.Dictionary.join({}, newInstance.Tracks)

		if GetFFlagFixEulerAnglesMenu() and not track then
			AnimationData.addTrack(
				newTracks,
				path[1],
				Constants.TRACK_TYPES.CFrame,
				AnimationData.isChannelAnimation(newData),
				Constants.TRACK_TYPES.EulerAngles,
				eulerAnglesOrder
			)
		end

		local newTrack = Cryo.Dictionary.join({}, newTracks[path[1]])
		local newComponents = Cryo.Dictionary.join({}, newTrack.Components)
		local newRotation = Cryo.Dictionary.join({}, newComponents[Constants.PROPERTY_KEYS.Rotation])

		newRotation.EulerAnglesOrder = eulerAnglesOrder

		newComponents[Constants.PROPERTY_KEYS.Rotation] = newRotation
		newTrack.Components = newComponents
		newTracks[path[1]] = newTrack
		newInstance.Tracks = newTracks
		newInstances[instanceName] = newInstance
		newData.Instances = newInstances

		store:dispatch(UpdateAnimationData(newData))
	end
end
