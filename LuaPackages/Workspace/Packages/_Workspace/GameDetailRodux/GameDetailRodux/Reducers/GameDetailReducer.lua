local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Packages = GameDetailRodux.Parent

local Immutable = require(Packages.AppCommonLib).Immutable
local AddGameDetails = require(GameDetailRodux.Actions.AddGameDetails)

-- FIXME: any type Rodux
return function(state: any, action: any)
	state = state or {}

	if action.type == AddGameDetails.name then
		state = Immutable.JoinDictionaries(state, action.gameDetails)
	end

	return state
end
