--[[
	Set the filter for the profiler.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(filter)
	return {
		filter = filter,
	}
end)
