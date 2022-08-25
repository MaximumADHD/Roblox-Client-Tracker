local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)
local reducer = require(InGameMenu.reducer)

local function createStore()
	local middlewares = {
		Rodux.thunkMiddleware,
	}

	if GlobalConfig.logStore then
		table.insert(middlewares, Rodux.loggerMiddleware)
	end

	return Rodux.Store.new(reducer, nil, middlewares)
end

return createStore