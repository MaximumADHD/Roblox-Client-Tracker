local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(creatorId)
	assert(
		typeof(creatorId) == "number",
		script.Name .. " requires creatorId to be a number, not " .. typeof(creatorId)
	)

	return {
		creatorId = creatorId,
	}
end)
