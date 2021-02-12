local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(something)
	assert(typeof(something) == "string", ("Expected something to be a string, received %s"):format(type(something)))
	return {
		something = something
	}
end)
