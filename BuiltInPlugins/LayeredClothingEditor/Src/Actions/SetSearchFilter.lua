--[[
	Sets what name to filter preview items by.
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(searchFilter)
	return {
		searchFilter = searchFilter,
	}
end)