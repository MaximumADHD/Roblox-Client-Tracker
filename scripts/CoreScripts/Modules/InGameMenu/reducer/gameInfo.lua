local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetGameNameAndDescription = require(InGameMenu.Actions.SetGameNameAndDescription)

return Rodux.createReducer({
	name = "Game",
	description = "",
}, {
	[SetGameNameAndDescription.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			name = action.gameName,
			description = action.gameDescription,
		})
	end,
})
