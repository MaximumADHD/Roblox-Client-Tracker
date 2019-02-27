local PurchaseError = require(script.Parent.Parent.PurchaseError)
local Promise = require(script.Parent.Parent.Promise)

local MAX_ROBUX = 2147483647

local function getAccountInfo(network, externalSettings)
	return network.getAccountInfo()
		:andThen(function(result)
			--[[
				In studio, we falsely report that users have the maximum amount
				 of robux, so that they can always test the normal purchase flow
			]]
			if externalSettings.isStudio() then
				result.RobuxBalance = MAX_ROBUX
			end

			return Promise.resolve(result)
		end)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getAccountInfo