--[[
	Select a field in the field tree.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(change)
	return {
		change = change
	}
end)
