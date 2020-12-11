--[[
	Toggle a target so it expands or collapses in the TargetView
]]
local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(change)
	return {
		change = change
	}
end)
