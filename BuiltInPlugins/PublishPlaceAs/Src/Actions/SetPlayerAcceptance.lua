local Plugin = script.Parent.Parent.Parent

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(playerAcceptance)
	AssertType.assertType(playerAcceptance, "boolean", "SetPlayerAcceptance")

	return {
		playerAcceptance = playerAcceptance,
	}
end)
