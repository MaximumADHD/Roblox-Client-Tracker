local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Core.Actions
local SetHomeConfiguration = require(Actions.SetHomeConfiguration)

local HomeTypes = require(Plugin.Core.Types.HomeTypes)

export type HomeViewStoreState = { [string]: HomeTypes.HomeConfiguration }

return Rodux.createReducer({}, {
	[SetHomeConfiguration.name] = function(state: HomeViewStoreState, action)
		state = Cryo.Dictionary.join(state, {
			[action.assetType.Name] = action.configuration,
		})

		return state
	end,
})
