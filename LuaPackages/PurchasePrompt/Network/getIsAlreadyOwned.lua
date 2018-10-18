local Players = game:GetService("Players")

local PurchaseError = require(script.Parent.Parent.PurchaseError)

local Promise = require(script.Parent.Parent.Promise)

local function getIsAlreadyOwned(network, id, infoType)
	return network.getPlayerOwns(Players.LocalPlayer, id, infoType)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getIsAlreadyOwned