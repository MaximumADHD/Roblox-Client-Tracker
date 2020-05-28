local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(groupOwnerName)
	assert(typeof(groupOwnerName) == "string", script.Name.." expected groupOwnerName to be a string, not "
		..typeof(groupOwnerName))

	return {
		groupOwnerName = groupOwnerName,
	}
end)