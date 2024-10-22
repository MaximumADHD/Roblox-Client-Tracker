--!strict
local GET = require(script.Parent.GET)
local POST = require(script.Parent.POST)
local PATCH = require(script.Parent.PATCH)
local DELETE = require(script.Parent.DELETE)
local Types = require(script.Parent.Types)

return function(options: Types.ConfigOptions)
	assert(options, "Expected options to be passed into RoduxNetworking")
	assert(options.keyPath, "Expected options.keyPath to be passed into RoduxNetworking")
	assert(options.networkImpl, "Expected options.networkImpl to be passed into RoduxNetworking")

	return {
		GET = function(moduleScript, constructBuilderFunction)
			assert(moduleScript, "RoduxNetworking:GET expects moduleScript argument")
			assert(moduleScript, "RoduxNetworking:GET expects constructBuilderFunction argument")
			return GET(options)(moduleScript, constructBuilderFunction)
		end,
		POST = function(moduleScript, constructBuilderFunction)
			return POST(options)(moduleScript, constructBuilderFunction)
		end,
		PATCH = function(moduleScript, constructBuilderFunction)
			return PATCH(options)(moduleScript, constructBuilderFunction)
		end,
		DELETE = function(moduleScript, constructBuilderFunction)
			return DELETE(options)(moduleScript, constructBuilderFunction)
		end,
		getNetworkImpl = function()
			return options.networkImpl
		end,
		setNetworkImpl = function(networkImpl)
			options.networkImpl = networkImpl
		end,
	}
end
