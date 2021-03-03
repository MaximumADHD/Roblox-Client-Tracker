local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(selectedNodes : table)
	assert(selectedNodes, ("selectedNodes required in"):format(script.Name))
	return {
		selectedNodes = selectedNodes
	}
end)
