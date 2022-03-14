local Packages = script:FindFirstAncestor("DebugUtils").Parent
local RoduxNetworking = require(Packages.RoduxNetworking)
local HttpRequest = require(Packages.HttpRequest)
local Rodux = require(Packages.Rodux)

return function(networkingPackage)
	local myRoduxNetworking = RoduxNetworking.config({
		keyPath = "networkStatus",
		networkImpl = HttpRequest.config({

			--* Note if you want better error info change HttpRbxApi to RequestInternal (do change back before merging though)
			requestFunction = HttpRequest.requestFunctions.HttpRbxApi,
			maxRetryCount = 1,
			defaultOptions = {
				headers = {
					["Cookie"] = "",
				},
			},
		}),
	})

	local configuredPackage = networkingPackage.config({
		roduxNetworking = myRoduxNetworking,
	})

	local reducer = Rodux.combineReducers({
		networkStatus = myRoduxNetworking.installReducer(),
	})
	local store = Rodux.Store.new(reducer, nil, { Rodux.thunkMiddleware })

	return store, configuredPackage
end
