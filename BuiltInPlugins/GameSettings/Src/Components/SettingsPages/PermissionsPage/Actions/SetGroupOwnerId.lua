local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(groupOwnerId)
	assert(typeof(groupOwnerId) == "number", script.Name.." expected groupOwnerId to be a number, not "
		..typeof(groupOwnerId))

	return {
		groupOwnerId = groupOwnerId,
	}
end)