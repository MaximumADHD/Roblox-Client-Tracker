local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Mode: string?
}

return Action(script.Name, function(mode: string?): Payload
	assert(not mode or type(mode) == "string", ("Expected mode to be nil or a string, received %s"):format(type(mode)))
	return {
		Mode = mode,
	}
end)
