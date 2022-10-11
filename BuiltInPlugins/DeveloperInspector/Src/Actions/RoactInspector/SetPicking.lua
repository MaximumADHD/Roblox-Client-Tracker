--[[
	Turn picking on or off, where the user hovers over an element and
	clicks on it to select the equivalent instance displayed in the element tree.
]]
local Main = script.Parent.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(isPicking: boolean)
	return {
		isPicking = isPicking,
	}
end)
