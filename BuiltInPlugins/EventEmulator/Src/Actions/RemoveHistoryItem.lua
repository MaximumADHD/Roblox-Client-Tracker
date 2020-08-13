local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(historyItem)
	assert(type(historyItem) == "string", ("Expected item to be a string, received %s"):format(type(historyItem)))
	return {
		historyItem = historyItem
	}
end)