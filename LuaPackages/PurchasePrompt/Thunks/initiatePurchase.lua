local Players = game:GetService("Players")

local Promise = require(script.Parent.Parent.Promise)
local Thunk = require(script.Parent.Parent.Thunk)

local Network = require(script.Parent.Parent.Services.Network)
local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

local PurchaseError = require(script.Parent.Parent.PurchaseError)

local ErrorOccurred = require(script.Parent.Parent.Actions.ErrorOccurred)
local SetProduct = require(script.Parent.Parent.Actions.SetProduct)

local getProductInfo = require(script.Parent.Parent.Network.getProductInfo)
local getIsAlreadyOwned = require(script.Parent.Parent.Network.getIsAlreadyOwned)
local getAccountInfo = require(script.Parent.Parent.Network.getAccountInfo)

local resolvePromptState = require(script.Parent.resolvePromptState)

local requiredServices = {
	Network,
	ExternalSettings,
}

local function initiatePurchase(id, infoType, equipIfPurchased)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		--[[
			If a purchase is already in progress, we abort the new one
		]]
		if store:getState().product.id ~= nil then
			return nil
		end

		store:dispatch(SetProduct(id, infoType, equipIfPurchased))

		local isStudio = externalSettings.isStudio()

		if not isStudio and Players.LocalPlayer.UserId <= 0 then
			store:dispatch(ErrorOccurred(PurchaseError.Guest))
			return nil
		end

		if externalSettings.getFlagOrder66() then
			store:dispatch(ErrorOccurred(PurchaseError.PurchaseDisabled))
			return nil
		end

		return Promise.all({
			productInfo = getProductInfo(network, id, infoType),
			accountInfo = getAccountInfo(network, externalSettings),
			alreadyOwned = getIsAlreadyOwned(network, id, infoType),
		})
			:andThen(function(results)
				-- Once we've finished all of our async data fetching, we'll
				-- resolve the state of the prompt
				store:dispatch(resolvePromptState(
					results.productInfo,
					results.accountInfo,
					results.alreadyOwned
				))
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiatePurchase