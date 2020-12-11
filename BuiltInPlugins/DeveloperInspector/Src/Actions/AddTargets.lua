--[[
	Add new targets to be displayed in the TargetView
]]
local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(message)
	return message
end)
