local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
if FFlagToolboxDeduplicatePackages then
	error("Deprecated Libs Rodux being used when FFlagToolboxDeduplicatePackages is enabled. Use Packages.Rodux instead.")
end

local Store = require(script.Store)
local createReducer = require(script.createReducer)
local combineReducers = require(script.combineReducers)
local loggerMiddleware = require(script.loggerMiddleware)
local thunkMiddleware = require(script.thunkMiddleware)

return {
	Store = Store,
	createReducer = createReducer,
	combineReducers = combineReducers,
	loggerMiddleware = loggerMiddleware.middleware,
	thunkMiddleware = thunkMiddleware,
}
