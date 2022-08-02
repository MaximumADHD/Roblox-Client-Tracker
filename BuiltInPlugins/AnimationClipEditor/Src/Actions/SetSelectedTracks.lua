--[[
	Used to set which track(s) are currently selected.

	Params:
		array selected = list of track names that are selected.
]]

local Plugin = script.Parent.Parent.Parent
local Action = require(script.Parent.Action)
local GetFFlagFixSelectionRightArrow = require(Plugin.LuaFlags.GetFFlagFixSelectionRightArrow)

return Action(script.Name, function(tracks)
	return {
		selectedTracks = if GetFFlagFixSelectionRightArrow() then (tracks or {}) else tracks,
	}
end)
