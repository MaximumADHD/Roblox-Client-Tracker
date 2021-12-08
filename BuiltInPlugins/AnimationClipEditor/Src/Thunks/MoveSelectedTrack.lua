--[[
	Moves the track selection by the given amount. Positive
	numbers move the selection down, and negative numbers
	move the selection up. This thunk clamps the selection
	if the selection is moved past the end of the track list.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local GetFFlagFixMoveSelectedTracks = require(Plugin.LuaFlags.GetFFlagFixMoveSelectedTracks)

return function(movement)
	return function(store)
		local status = store:getState().Status or store:getState()
		local tracks = status.Tracks
		local numTracks = #tracks
		local selectedTracks = status.SelectedTracks

		if not selectedTracks or (GetFFlagFixMoveSelectedTracks() and isEmpty(selectedTracks)) then
			return
		end

		if GetFFlagFixMoveSelectedTracks() then
			local newSelectedTracksMap = {}

			-- Prepare a map of trackName:index to avoid looking up through the
			-- list of tracks multiple times
			local trackMap = {}
			for index, track in ipairs(tracks) do
				trackMap[track.Name] = index
			end

			-- Find the biggest move we can make without getting out of bounds
			local minIndex, maxIndex
			for _, selectedTrackName in ipairs(selectedTracks) do
				local selectedTrackIndex = trackMap[selectedTrackName]

				minIndex = minIndex and math.min(minIndex, selectedTrackIndex) or selectedTrackIndex
				maxIndex = maxIndex and math.max(maxIndex, selectedTrackIndex) or selectedTrackIndex
			end
			if movement > 0 then
				movement = math.min(movement, #tracks - maxIndex)
			else
				movement = math.max(movement, 1 - minIndex)
			end

			-- For each selected track, find its index, adjust it depending on movement,
			-- and store it in newSelectedTracksMap.
			for _, selectedTrackName in ipairs(selectedTracks) do
				local selectedTrackIndex = trackMap[selectedTrackName]
				if selectedTrackIndex then
					selectedTrackIndex += movement
					local trackName = tracks[selectedTrackIndex].Name
					newSelectedTracksMap[trackName] = true
				end
			end

			store:dispatch(SetSelectedTracks(Cryo.Dictionary.keys(newSelectedTracksMap)))
		else
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
end
