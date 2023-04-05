local Root = script.Parent
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

local mockStore = function<T>(state: T?, reducer: ((state: T, action: any) -> T)?)
	local rootReducer = reducer or function(state)
		return state
	end
	return Rodux.Store.new(rootReducer, state or {}, { Rodux.thunkMiddleware })
end

return mockStore
