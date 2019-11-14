local Players = game:GetService("Players")
local ABTestService = game:GetService("ABTestService")

local Root = script.Parent.Parent

local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)

local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)

local PurchaseError = require(Root.PurchaseError)

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local SetProduct = require(Root.Actions.SetProduct)
local SetABVariation = require(Root.Actions.SetABVariation)

local getProductInfo = require(Root.Network.getProductInfo)
local getIsAlreadyOwned = require(Root.Network.getIsAlreadyOwned)
local getAccountInfo = require(Root.Network.getAccountInfo)

local resolvePromptState = require(script.Parent.resolvePromptState)

local Constants = require(Root.Misc.Constants)

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

		pcall(function()
			store:dispatch(SetABVariation(Constants.ABTests.ROBUX_HEX_ICON,
				ABTestService:GetVariant(Constants.ABTests.ROBUX_HEX_ICON)))
		end)

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