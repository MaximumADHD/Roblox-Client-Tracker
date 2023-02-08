local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)

local Rodux = dependencies.Rodux
local RoduxGames = dependencies.RoduxGames
local RoduxNetworking = dependencies.RoduxNetworking
local RoduxSquads = dependencies.RoduxSquads

return function()
	return Rodux.combineReducers({
		Games = RoduxGames.installReducer(),
		NetworkStatus = RoduxNetworking.installReducer(),
		Squad = RoduxSquads.installReducer(),
	})
end
