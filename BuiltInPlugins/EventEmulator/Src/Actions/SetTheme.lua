local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(themeName)
	assert(type(themeName) == "string", ("Expected themeName to be a string, received %s"):format(type(themeName)))
	return {
		themeName = themeName
	}
end)