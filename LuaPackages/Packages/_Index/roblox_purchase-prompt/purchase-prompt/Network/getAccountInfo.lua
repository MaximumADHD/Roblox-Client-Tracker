local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local MAX_ROBUX = 2147483647

local function getAccountInfo(network, externalSettings)
	if UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
		return Promise.all({
			accountInfo = network.getAccountInfo(),
			xboxBalance = network.getXboxRobuxBalance(),
		}):andThen(function(results)
			local accountInfo = results.accountInfo
			-- Override balance with platform-specific balance
			accountInfo.RobuxBalance = results.xboxBalance.Robux

			return Promise.resolve(accountInfo)
		end)
	end

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