local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local MAX_ROBUX = 2147483647

local function getBalanceInfo(network, externalSettings)
	return network.getBalanceInfo()
		:andThen(function(result)
			--[[
				In studio, we falsely report that users have the maximum amount
				 of robux, so that they can always test the normal purchase flow
			]]
			if externalSettings.isStudio() then
				result.robux = MAX_ROBUX
			end

			return Promise.resolve(result)
		end)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getBalanceInfo
