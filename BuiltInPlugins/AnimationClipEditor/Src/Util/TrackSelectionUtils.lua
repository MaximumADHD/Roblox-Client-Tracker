--!strict
--[[
	Utility functions for the track selection.
]]

local Plugin = script.Parent.Parent.Parent

local AnimationData = require(Plugin.Src.Util.AnimationData)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local PathUtils = require(Plugin.Src.Util.PathUtils)

local TrackSelectionUtils = {}

-- Given a track selection and animationData, prune selected tracks that are not present in the data anymore.
-- The second parameters tells if the selection has changed because of that pruning.
function TrackSelectionUtils.PruneSelectedTracks(animationData: AnimationData.AnimationData, selectedTracks: {PathUtils.Path}?): ({PathUtils.Path}, boolean)
	local newSelectedTracks = {}
	local changed = false

	if selectedTracks then
		for _, path in ipairs(selectedTracks) do
			-- TODO: AVBURST-7740. InstanceName should be part of the selected path. Until then, assume that all selected
			-- tracks are in the "Root" instance, which is the only one available anyway - at least for now.
			if AnimationData.getTrack(animationData, "Root", path) then
				table.insert(newSelectedTracks, path)
			else
				changed = true
			end
		end
	end

	return newSelectedTracks, changed
end

return TrackSelectionUtils
