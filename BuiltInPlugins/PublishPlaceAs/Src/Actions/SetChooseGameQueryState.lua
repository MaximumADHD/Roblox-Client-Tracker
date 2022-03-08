local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(script.Parent.Action)

local FFlagDebugFixPublishAsWhenQueryFails = game:GetFastFlag("DebugFixPublishAsWhenQueryFails")

return Action(script.Name, function(queryStateArg)
	assert(FFlagDebugFixPublishAsWhenQueryFails, "FFlagDebugFixPublishAsWhenQueryFails must be enabled")
	AssertType.assertNullableType(queryStateArg, "string", "SetChooseGameQuery arg")

	return {
    gameInfo = {
			queryState = queryStateArg
		}
	}
end)
