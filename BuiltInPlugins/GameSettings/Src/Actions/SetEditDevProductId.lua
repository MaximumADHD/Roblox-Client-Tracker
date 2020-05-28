local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Framework.Util.Action)

return Action(script.Name, function(editDevProductId)
	assert(type(editDevProductId) == "number" or type(editDevProductId) == "nil",
		string.format("SetEditDevProductId requires a number or nil, not %s", type(editDevProductId)))

    return {
		editDevProductId = editDevProductId
	}
end)