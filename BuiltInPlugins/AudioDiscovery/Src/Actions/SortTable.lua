--[[
	Update the current sort column and direction of the event log.
]]
local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(tableName: string, index: number, order: Enum.SortDirection)
	return {
		TableName = tableName,
		SortIndex = index,
		SortOrder = order,
	}
end)
