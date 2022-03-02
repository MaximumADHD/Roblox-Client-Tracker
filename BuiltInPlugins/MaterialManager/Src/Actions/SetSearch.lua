local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Search : string
}

return Action(script.Name, function(Search : string) : Payload
	assert(type(Search) == "string", ("Expected search to be a string, received %s"):format(type(Search)))
	return {
		Search = Search
	}
end)
