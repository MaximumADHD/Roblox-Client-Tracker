--[[
	Moves the track selection by the given amount. Positive
	numbers move the selection down, and negative numbers
	move the selection up. This thunk clamps the selection
	if the selection is moved past the end of the track list.
]]

local Plugin = script.Parent.Parent.Parent
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)

return function(movement)
	return function(store)
		local status = store:getState().Status or store:getState()
		local tracks = status.Tracks
		local numTracks = #tracks
		local selectedTracks = status.SelectedTracks

		if not selectedTracks then
			return
		end

		local selectedTrack = selectedTracks[#selectedTracks]

		if not selectedTrack then
			return
		end

		local trackIndex
		for index, track in ipairs(tracks) do
			if track.Name == selectedTrack then
				trackIndex = index
				break
			end
		end

		trackIndex = math.clamp(trackIndex + movement, 1, numTracks)

		local newTrack = tracks[trackIndex].Name
		store:dispatch(SetSelectedTracks({newTrack}))
	end
end