--[[
	Update the current page size of the event log.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(tableName: string, pageSize: number)
	return {
		tableName = tableName,
		pageSize = pageSize,
	}
end)
