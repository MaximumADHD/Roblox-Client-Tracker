local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(parameters)
	assert(type(parameters) == "table", ("Expected parameters to be a table, received %s"):format(type(parameters)))
	return {
		parameters = parameters
	}
end)
