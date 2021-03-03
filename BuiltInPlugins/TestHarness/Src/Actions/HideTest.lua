local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(token)
	assert(token, ("token required in"):format(token))
	return {
		token = token
	}
end)
