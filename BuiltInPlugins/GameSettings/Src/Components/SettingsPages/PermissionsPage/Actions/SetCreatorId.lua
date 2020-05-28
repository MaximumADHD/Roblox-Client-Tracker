local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(creatorId)
	assert(typeof(creatorId) == "number", script.Name.." requires creatorId to be a number, not "..typeof(creatorId))

	return {
		creatorId = creatorId,
	}
end)
