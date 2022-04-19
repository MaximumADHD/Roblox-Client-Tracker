--[[
	Actions are functions to register a change in state to Rodux.
	This implementation uses a helper class in Developer Framework
	that protects against typos and standardizes the format of
	actions.

	New Plugin Setup: Copy the format of this action to create your own
]]
local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(something)
	assert(typeof(something) == "string", ("Expected something to be a string, received %s"):format(type(something)))
	return {
		something = something
	}
end)
