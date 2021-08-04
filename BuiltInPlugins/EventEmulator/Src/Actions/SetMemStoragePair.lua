local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(pair)
	assert(type(pair) == "table", ("Expected pair to be a table, received %s"):format(type(pair)))
	return {
		pair = pair
	}
end)
