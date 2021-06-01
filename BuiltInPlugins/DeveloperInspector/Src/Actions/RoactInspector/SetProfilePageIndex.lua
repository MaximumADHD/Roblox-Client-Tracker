--[[
	Update the current page of the event log.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(tableName: string, pageIndex: number)
	return {
		tableName = tableName,
		pageIndex = pageIndex,
	}
end)
