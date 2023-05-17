local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

local RaiseActionAsEventMiddleware = require(script.Parent.RaiseActionAsEventMiddleware)
local installReducer = require(script.Parent.installReducer)

local function createStore()
	return Rodux.Store.new(installReducer, nil, {
		Rodux.thunkMiddleware,
		RaiseActionAsEventMiddleware :: any,
	})
end

return createStore
