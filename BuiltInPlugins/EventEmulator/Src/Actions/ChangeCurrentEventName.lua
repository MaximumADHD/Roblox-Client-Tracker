local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(name)
	assert(type(name) == "string", ("Expected item to be a string, received %s"):format(type(name)))
	return {
		name = name,
	}
end)