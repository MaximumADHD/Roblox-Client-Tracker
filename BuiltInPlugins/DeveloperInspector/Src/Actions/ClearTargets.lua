--[[
	Clear the targets listed the TargetView
]]
local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function()
	return {}
end)
