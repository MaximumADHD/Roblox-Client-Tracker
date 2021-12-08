--[[
	Deletes all the keyframes of a track (but doesn't delete the track)
	The UI will restrict this to components (Position, Rotation, X/Y/Z).
	Top level tracks (CFrame/Facs) can be deleted (but not cleared)
]]
local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local Cryo = require(Plugin.Packages.Cryo)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)

local FFlagACEFixClearTrack = game:DefineFastFlag("ACEFixClearTrack", false)

return function(instanceName, path, analytics)
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

		local track = AnimationData.getTrack(newData, instanceName, path)
		if track ~= nil then
			TrackUtils.traverseTracks(nil, track, function(t)
				t.Keyframes = {}
				t.Data = {}
			end)

			if FFlagACEFixClearTrack then
				store:dispatch(UpdateAnimationData(newData))
			else
				store:dispatch(SetAnimationData(newData))
			end
		end
	end
end
