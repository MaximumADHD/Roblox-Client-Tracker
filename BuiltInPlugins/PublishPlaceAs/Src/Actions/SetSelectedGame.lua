local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Resources.Constants)

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(script.Parent.Action)

local FFlagFixPublishAsWhenQueryFails = game:GetFastFlag("FixPublishAsWhenQueryFails")

return Action(script.Name, function(selectedGame)
	assert(FFlagFixPublishAsWhenQueryFails, "FFlagFixPublishAsWhenQueryFails must be enabled")
	AssertType.assertNullableType(selectedGame, "table", "SetSelectedGame arg")

	return {
		selectedGame = selectedGame
	}
end)
