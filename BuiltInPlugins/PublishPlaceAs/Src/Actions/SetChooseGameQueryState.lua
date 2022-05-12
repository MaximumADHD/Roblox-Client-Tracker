local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(script.Parent.Action)


return Action(script.Name, function(queryStateArg)
	AssertType.assertNullableType(queryStateArg, "string", "SetChooseGameQuery arg")

	return {
    gameInfo = {
			queryState = queryStateArg
		}
	}
end)
