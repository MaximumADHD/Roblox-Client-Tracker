--[[
	Size of the editing item.
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(size)
	return {
		size = size,
	}
end)