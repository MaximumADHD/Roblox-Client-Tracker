--!strict
local RoduxNetworking = require(script.RoduxNetworking)
local NetworkStatus = require(script.NetworkStatus)
local mockRoduxNetworking = require(script.mockRoduxNetworking)
local Types = require(script.Types)

export type ConfigOptions = Types.ConfigOptions
export type MethodType = Types.MethodType

return {
	config = function(options: Types.ConfigOptions)
		local roduxNetworkingInstance = RoduxNetworking(options)
		local networkStatusInstance = NetworkStatus(options)

		return {
			GET = function(moduleScript, constructBuilderFunction)
				return roduxNetworkingInstance.GET(moduleScript, constructBuilderFunction )
			end,
			POST = function(moduleScript, constructBuilderFunction)
				return roduxNetworkingInstance.POST(moduleScript, constructBuilderFunction)
			end,
			PATCH = function(moduleScript, constructBuilderFunction)
				return roduxNetworkingInstance.PATCH(moduleScript, constructBuilderFunction)
			end,
			getNetworkImpl = function()
				return roduxNetworkingInstance.getNetworkImpl()
			end,
			setNetworkImpl = function(...)
				roduxNetworkingInstance.setNetworkImpl(...)
			end,

			installReducer = networkStatusInstance.installReducer,
			Enum = {
				NetworkStatus = networkStatusInstance.Enum.Status,
			},
		}
	end,

	mock = mockRoduxNetworking,
}
