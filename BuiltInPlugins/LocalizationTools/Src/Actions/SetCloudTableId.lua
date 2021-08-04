local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(cloudTableId)
	assert(type(cloudTableId) == "string",
		"Expected cloudTableId to be a string")
	return {
		cloudTableId = cloudTableId,
	}
end)
