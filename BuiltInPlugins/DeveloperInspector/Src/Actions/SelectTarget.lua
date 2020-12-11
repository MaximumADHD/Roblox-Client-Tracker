--[[
	Select a target in the TargetTree
]]
local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(target)
	return {
		target = target
	}
end)
