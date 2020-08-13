local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(view, name, data)
	assert(type(view) == "string", ("Expected view to be a string, received %s"):format(type(view)))
	assert(type(name) == "string", ("Expected name to be a string, received %s"):format(type(name)))
	return {
		item = {
			Name = name,
			View = view,
			Data = data,
		}
	}
end)