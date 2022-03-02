--[[
	Sets if editing item is in accessory bounds.
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(inBounds)
	return {
		inBounds = inBounds,
	}
end)