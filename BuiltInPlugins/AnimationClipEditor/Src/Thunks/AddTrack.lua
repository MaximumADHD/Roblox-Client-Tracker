--[[
	This thunk is used to add a new track to the Animation Editor.

	Parameters:
		string instanceName: The name of the instance this track belongs to.
		string trackName: The name to use for the new track.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local Templates = require(Plugin.Src.Util.Templates)
local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)

return function(instanceName, trackName)
	return function(store)
		local state = store:getState()
		local status = state.Status

		if status == nil then
			return
		end

		local tracks = status.Tracks

		for _, track in ipairs(tracks) do
			if track.Name == trackName then
				return
			end
		end

		local newTrack = Templates.trackListEntry()
		newTrack.Name = trackName
		newTrack.Instance = instanceName

		local newTracks = Cryo.List.join(tracks, {newTrack})

		store:dispatch(SortAndSetTracks(newTracks))

		state.Analytics:onTrackAdded(trackName)
	end
end