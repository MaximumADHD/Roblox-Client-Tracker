--[[
	Actions are functions to register a change in state to Rodux.
	This implementation uses a helper class in Developer Framework
	that protects against typos and standardizes the format of
	actions. Export a Payload type for use in the reducer.

	New Plugin Setup: Copy the format of this action to create your own
]]
local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	something: string
}

return Action(script.Name, function(something: string)
	assert(typeof(something) == "string", ("Expected something to be a string, received %s"):format(type(something)))
	return {
		something = something
	}
end)
