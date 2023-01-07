local SetAlias = script.Parent.Parent
local dependencies = require(SetAlias.dependencies)
local Rodux = dependencies.Rodux

local mockStore = function(state, reducer: any?)
	local newReducer = reducer or function(state)
		return state
	end
	return Rodux.Store.new(newReducer, state or {}, { Rodux.thunkMiddleware })
end

return mockStore
