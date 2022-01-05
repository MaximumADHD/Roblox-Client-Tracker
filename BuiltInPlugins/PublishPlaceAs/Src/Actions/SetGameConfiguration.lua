local Plugin = script.Parent.Parent.Parent
local AssertType = require(Plugin.Src.Util.AssertType)
local Action = require(script.Parent.Action)

return Action(script.Name, function(gameConfigurationArg)
	AssertType.assertNullableType(gameConfigurationArg, "table", "SetGameConfiguration arg")
	local gameConfiguration = gameConfigurationArg or {}
	local optInRegions = gameConfigurationArg.optInRegions or {}
	return {
		gameConfiguration = { optInRegions = optInRegions }
	}
end)
