--[[
	Update the current sort column and direction of the event log.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(tableName: string, index: number, order: Enum.SortDirection)
	return {
		tableName = tableName,
		sortIndex = index,
		sortOrder = order,
	}
end)
