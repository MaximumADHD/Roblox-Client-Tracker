local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent
local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
local InspectAndBuyV2IXPTest = require(InGameMenu.Flags.InspectAndBuyV2IXPTest)

local GlobalConfig = require(InGameMenu.GlobalConfig)
local reducer = require(InGameMenu.reducer)

local function createStore()
	local middlewares = {
		Rodux.thunkMiddleware,
	}

	if GlobalConfig.logStore then
		table.insert(middlewares, Rodux.loggerMiddleware)
	end

	if InspectAndBuyV2IXPTest.isEnabled() then
		local inspectAndBuyMiddleware = InspectAndBuyThunk.middleware({
			[Network] = Network.new(),
		})
		table.insert(middlewares, inspectAndBuyMiddleware)
	end

	return Rodux.Store.new(reducer, nil, middlewares)
end

return createStore