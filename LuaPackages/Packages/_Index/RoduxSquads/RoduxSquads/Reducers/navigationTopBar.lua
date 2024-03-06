local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Root = RoduxSquad.Parent
local Rodux = require(Root.Rodux)
local NavigationTopBarUpdated = require(RoduxSquad.Actions).NavigationTopBarUpdated
local NavigationTopBarModel = require(RoduxSquad.Models).NavigationTopBarModel

local RoduxSquadsTypes = require(script.Parent.Parent.RoduxSquadsTypes)

local DEFAULT_STATE: RoduxSquadsTypes.NavigationTopBar = { topBarOpacity = 1 }

return function()
	return Rodux.createReducer(DEFAULT_STATE, {

		[NavigationTopBarUpdated.name] = function(
			_: RoduxSquadsTypes.NavigationTopBar,
			action: RoduxSquadsTypes.NavigationTopBarUpdatedAction
		)
			return NavigationTopBarModel.format(action.payload)
		end,
	})
end
