--[[
	Toggle picking, where the user hovers over an element and clicks on it to select the equivalent
	instance displayed in the element tree.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(isPicking)
	return {
		isPicking = isPicking
	}
end)
