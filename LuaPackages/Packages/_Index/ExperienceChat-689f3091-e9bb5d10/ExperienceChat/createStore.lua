local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

local RaiseActionAsEventMiddleware = require(script.Parent.RaiseActionAsEventMiddleware)
local installReducer = require(script.Parent.installReducer)

local function createStore(initStoreState)
	return Rodux.Store.new(installReducer, initStoreState, {
		Rodux.thunkMiddleware,
		RaiseActionAsEventMiddleware :: any,
	})
end

return createStore
