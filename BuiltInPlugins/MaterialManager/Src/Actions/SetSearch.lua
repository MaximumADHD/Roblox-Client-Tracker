local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Search : string
}

return Action(script.Name, function(search : string) : Payload
	assert(type(search) == "string", ("Expected search to be a string, received %s"):format(type(search)))
	return {
		Search = search
	}
end)
