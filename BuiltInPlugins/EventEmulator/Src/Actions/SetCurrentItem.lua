local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(currentItem)
	assert(type(currentItem) == "string", ("Expected currentItem to be a string, received %s"):format(type(currentItem)))

	return {
		currentItem = currentItem
	}
end)