local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetGameNameAndDescription = require(InGameMenu.Actions.SetGameNameAndDescription)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)

return Rodux.createReducer({
	name = "Game",
	description = "",
	isFavorited = false,
}, {
	[SetGameNameAndDescription.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			name = action.gameName,
			description = action.gameDescription,
		})
	end,
	[SetGameFavorite.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isFavorited = action.isFavorited,
		})
	end,
})
