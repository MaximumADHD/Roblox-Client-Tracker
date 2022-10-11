local Plugin = script.Parent.Parent.Parent

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(isPublishing)
	AssertType.assertType(isPublishing, "boolean", "SetIsPublishing")

	return {
		isPublishing = isPublishing,
	}
end)
