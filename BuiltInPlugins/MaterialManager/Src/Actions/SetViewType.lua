local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	ViewType : string
}

return Action(script.Name, function(viewType : string) : Payload
	assert(type(viewType) == "string", ("Expected viewType to be a string, received %s"):format(type(viewType)))
	return {
		ViewType = viewType,
	}
end)
