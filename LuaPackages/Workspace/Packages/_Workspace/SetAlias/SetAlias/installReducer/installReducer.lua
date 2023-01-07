local SetAlias = script.Parent.Parent
local dependencies = require(SetAlias.dependencies)

local Rodux = dependencies.Rodux
local RoduxNetworking = dependencies.RoduxNetworking
local RoduxAliases = dependencies.RoduxAliases

return function()
	return Rodux.combineReducers({
		Aliases = RoduxAliases.installReducer(),
		NetworkStatus = RoduxNetworking.installReducer(),
	})
end
