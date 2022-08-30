--[[
	Convert a track to a new type, specifically between Quaternions and Euler Angles tracks.
]]
local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local Cryo = require(Plugin.Packages.Cryo)

local SetTracks = require(Plugin.Src.Actions.SetTracks)
local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)

local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local PathUtils = require(Plugin.Src.Util.PathUtils)
local Templates = require(Plugin.Src.Util.Templates)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

return function(instanceName: string, path: PathUtils.Path, newType: string, analytics: any): ({[string]: any}) -> ()
	return function(store: {[string]: any}): ()
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData or not animationData.Instances[instanceName] then
			return
		end

		local eulerAnglesOrder = state.Status.DefaultEulerAnglesOrder or Enum.RotationOrder.XYZ
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
				TrackUtils.convertTrackToEulerAngles(track, eulerAnglesOrder)
				
				trackEntry.Type = Constants.TRACK_TYPES.EulerAngles
				trackEntry.EulerAnglesOrder = eulerAnglesOrder
				TrackUtils.createTrackListEntryComponents(
					trackEntry,
					trackEntry.Instance,
					Constants.TRACK_TYPES.EulerAngles,
					eulerAnglesOrder
				)
				store:dispatch(UpdateAnimationData(newData))
				store:dispatch(SortAndSetTracks(newTracks))
			end
		end
	end
end
