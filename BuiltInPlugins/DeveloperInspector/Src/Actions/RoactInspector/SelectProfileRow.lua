--[[
	Update the current sort column and direction of the event log.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(selectedRow: number)
	return {
		selectedRow = selectedRow,
	}
end)
