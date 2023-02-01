local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)

local Rodux = dependencies.Rodux
local RoduxSquads = dependencies.RoduxSquads

return function()
	return Rodux.combineReducers({
		Squad = RoduxSquads.installReducer(),
	})
end
