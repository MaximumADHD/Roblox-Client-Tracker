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
local AnimationData = require(Plugin.Src.Util.AnimationData)

local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

return function(movement)
	return function(store)
		-- TODO AVBURST-7265: `or store:getState()` is only necessary because of the test in Status.spec.lua. Can we do better?
		local status = store:getState().Status or store:getState()
		local tracks = status.Tracks
		local animationData = store:getState().AnimationData
		local selectedTracks = status.SelectedTracks

		if not selectedTracks or isEmpty(selectedTracks) then
			return
		end

		-- Disable moving the selection if the animation is Channel based and if more than one track is selected
		if GetFFlagCurveEditor() and AnimationData.isChannelAnimation(animationData) and #selectedTracks > 1 then
			return
		end

		local newSelectedTracksMap = {}

		-- Prepare a map of trackName:index to avoid looking up through the
		-- list of tracks multiple times
		local trackMap = {}
		for index, track in ipairs(tracks) do
			trackMap[track.Name] = index
		end

		-- Find the biggest move we can make without getting out of bounds
		local minIndex, maxIndex
		for _, selectedTrack in ipairs(selectedTracks) do
			local selectedTrackName
			if GetFFlagCurveEditor() then
				selectedTrackName = selectedTrack[1]
			else
				selectedTrackName = selectedTrack
			end
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
		for _, selectedTrack in ipairs(selectedTracks) do
			local selectedTrackName
			if GetFFlagCurveEditor() then
				selectedTrackName = selectedTrack[1]
			else
				selectedTrackName = selectedTrack
			end
			local selectedTrackIndex = trackMap[selectedTrackName]

			if selectedTrackIndex then
				selectedTrackIndex += movement
				local trackName = tracks[selectedTrackIndex].Name
				newSelectedTracksMap[trackName] = true
			end
		end

		if GetFFlagCurveEditor() then
			local newSelectedTracks = {}
			for selectedTrackName, _ in pairs(newSelectedTracksMap) do
				table.insert(newSelectedTracks, {selectedTrackName})
			end
			store:dispatch(SetSelectedTracks(newSelectedTracks))
		else
			store:dispatch(SetSelectedTracks(Cryo.Dictionary.keys(newSelectedTracksMap)))
		end
	end
end
