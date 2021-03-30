--[[
	Collapse all elements of the tree
]]
local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function()
	return {}
end)
