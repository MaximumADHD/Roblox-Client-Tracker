local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(script.Parent.Action)

local FFlagFixPublishAsWhenQueryFails = game:GetFastFlag("FixPublishAsWhenQueryFails")

return Action(script.Name, function(queryStateArg)
	assert(FFlagFixPublishAsWhenQueryFails, "FFlagFixPublishAsWhenQueryFails must be enabled")
	AssertType.assertNullableType(queryStateArg, "string", "SetChooseGameQuery arg")

	return {
    gameInfo = {
			queryState = queryStateArg
		}
	}
end)
