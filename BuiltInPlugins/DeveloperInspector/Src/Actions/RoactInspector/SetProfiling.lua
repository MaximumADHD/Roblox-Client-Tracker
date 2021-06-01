--[[
	Turn profiling on or off, where the DeveloperTools library records the renders of a Roact tree.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(isProfiling: boolean)
	return {
		isProfiling = isProfiling
	}
end)
