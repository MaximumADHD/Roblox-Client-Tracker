local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	ActiveAsTool: boolean
}

return Action(script.Name, function(active: boolean): Payload
    assert(type(active) == "boolean", ("Expected active to be boolean, received %s"):format(type(active)))
	return {
		ActiveAsTool = active
	}
end)
