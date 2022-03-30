local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Name : string
}

return Action(script.Name, function(name : string) : Payload
	assert(type(name) == "string", ("Expected name to be a string, received %s"):format(type(name)))
	return {
		Name = name,
	}
end)
