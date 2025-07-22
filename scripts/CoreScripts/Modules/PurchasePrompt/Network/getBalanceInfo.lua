local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local MAX_ROBUX = 2147483647


local FFlagGetBalanceInfoV2 = game:DefineFastFlag("GetBalanceInfoV2", false)

local function getBalanceInfo(network, externalSettings, overrideStudioMock, disallowReject: boolean?)
	return network.getBalanceInfo()
		:andThen(function(result)
			--[[
				In studio, we falsely report that users have the maximum amount
				 of robux, so that they can always test the normal purchase flow
			]]
			if externalSettings.isStudio() and not overrideStudioMock then
				result.robux = MAX_ROBUX
			end
			result.hasFailed = false -- always set to false makes sure types are consistent in roll out
			return Promise.resolve(result)
		end)
		:catch(function(failure)
			if FFlagGetBalanceInfoV2 and disallowReject then
				return Promise.resolve({ robux = 0, hasFailed = true })
			else 
				return Promise.reject(PurchaseError.UnknownFailure)
			end 
		end)
end

return getBalanceInfo
