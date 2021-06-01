--[[
	Set the search term for the profiler.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(searchTerm)
	return {
		searchTerm = searchTerm,
	}
end)
