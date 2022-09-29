--[[
	Sets filter for preview item category (Custom vs Default)
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(categoryFilter)
	return {
		categoryFilter = categoryFilter,
	}
end)
