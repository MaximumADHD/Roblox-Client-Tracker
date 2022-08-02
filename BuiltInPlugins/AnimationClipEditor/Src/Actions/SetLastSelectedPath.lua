--[[
	Used to set which path was selected last. This is used when handling SHIFT-
	selection

	Params:
		Path path = The last path selected, or nil if the selection is cleared.
]]

local Plugin = script.Parent.Parent.Parent
local Action = require(script.Parent.Action)
local PathUtils = require(Plugin.Src.Util.PathUtils)

return Action(script.Name, function(path: PathUtils.Path?): { lastSelectedPath: PathUtils.Path? }
	return {
		lastSelectedPath = path,
	}
end)
