--!nonstrict

return function()
	local Packages = script.Parent.Parent
	local RoduxNetworking = require(Packages.Dev.RoduxNetworking) :: any
	local HttpRequest = require(Packages.Dev.HttpRequest) :: any
	local Rodux = require(Packages.Dev.Rodux) :: any
	local Mock = require(Packages.Dev.Mock) :: any

	beforeAll(function(context)
		local myRoduxNetworking: any = RoduxNetworking.config({
			keyPath = "networkStatus",
			networkImpl = HttpRequest.config({
				requestFunction = HttpRequest.requestFunctions.MockRequest,
			}),
		})

		context.Rodux = Rodux
		context.Mock = Mock
		context.roduxNetworking = myRoduxNetworking
		context.createStoreWithReducer = function(testReducer)
			local reducer = Rodux.combineReducers({
				networkStatus = myRoduxNetworking.installReducer(),
				testReducer = testReducer,
			})

			return Rodux.Store.new(reducer, nil, { Rodux.thunkMiddleware })
		end
	end)
end
