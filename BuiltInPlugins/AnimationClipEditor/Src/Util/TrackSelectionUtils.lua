--!strict
--[[
	Utility functions for the track selection.
]]

local Plugin = script.Parent.Parent.Parent

local AnimationData = require(Plugin.Src.Util.AnimationData)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local PathUtils = require(Plugin.Src.Util.PathUtils)

local TrackSelectionUtils = {}
local GetFFlagFixSelectionRightArrow = require(Plugin.LuaFlags.GetFFlagFixSelectionRightArrow)

-- Given a track selection and animationData, prune selected tracks that are not present in the data anymore.
-- The second parameters tells if the selection has changed because of that pruning.
-- TODO: Return type can drop the ? when GetFFlagFixSelectionRightArrow is retired.
function TrackSelectionUtils.PruneSelectedTracks(animationData: AnimationData.AnimationData, selectedTracks: {PathUtils.Path}?): ({PathUtils.Path}?, boolean)
	local newSelectedTracks = if GetFFlagFixSelectionRightArrow() then {} else nil
	local changed = false

	if selectedTracks then
		for _, path in ipairs(selectedTracks) do
			-- TODO: AVBURST-7740. InstanceName should be part of the selected path. Until then, assume that all selected
			-- tracks are in the "Root" instance, which is the only one available anyway - at least for now.
			if AnimationData.getTrack(animationData, "Root", path) then
				if GetFFlagFixSelectionRightArrow() then
					assert(newSelectedTracks ~= nil, "")  -- Unnecessary when GetFFlagFixSelectionRightArrow is removed.
					table.insert(newSelectedTracks, path)
				else
					if newSelectedTracks then
						table.insert(newSelectedTracks, path)
					else
						newSelectedTracks = {path}
					end
				end
			else
				changed = true
			end
		end
		if not GetFFlagFixSelectionRightArrow() and newSelectedTracks ~= nil and isEmpty(newSelectedTracks) then
			newSelectedTracks = nil
		end
	end

	return newSelectedTracks, changed
end

return TrackSelectionUtils
