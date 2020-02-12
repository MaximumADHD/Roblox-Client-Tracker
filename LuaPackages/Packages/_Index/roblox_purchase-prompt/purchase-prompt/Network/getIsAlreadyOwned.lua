local Root = script.Parent.Parent
local Players = game:GetService("Players")

local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local function getIsAlreadyOwned(network, id, infoType)
	return network.getPlayerOwns(Players.LocalPlayer, id, infoType)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getIsAlreadyOwned