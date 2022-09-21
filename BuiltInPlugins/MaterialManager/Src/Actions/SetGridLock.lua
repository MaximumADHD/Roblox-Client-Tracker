-- Delete with FFlagReducerImprovements

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	GridLock: boolean
}

return Action(script.Name, function(gridLock: boolean): Payload
	assert(type(gridLock) == "boolean", ("Expected material to be a boolean, received %s"):format(type(gridLock)))

	return {
		GridLock = gridLock
	}
end)
