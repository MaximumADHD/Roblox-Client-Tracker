--[[
	Sets the current search filter
]]

local Main = script.Parent.Parent.Parent
local Util = require(Main.Packages.Framework).Util
local Action = Util.Action

export type Props = {
	searchFilter: string,
}

return Action(script.Name, function(searchFilter: string): Props
	return {
		searchFilter = searchFilter,
	}
end)
