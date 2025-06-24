local Root = script.Parent.Parent
local Promise = require(Root.Promise)
local PurchaseError = require(Root.Enums.PurchaseError)
local PaymentPlatform = require(Root.Enums.PaymentPlatform)
local paymentPlatformToUpsellPlatform = require(Root.Utils.paymentPlatformToUpsellPlatform)

local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local IAPExperience = PurchasePromptDeps.IAPExperience
local GetUpsellSuggestions = IAPExperience.Api.PaymentsGateway.GetUpsellSuggestions

local UpsellSuggestionsAPIMaxPackages =
	require(CorePackages.Workspace.Packages.SharedFlags).UpsellSuggestionsAPIMaxPackages

return function(price: number, robuxBalance: number, paymentPlatform: string, itemProductId: number?, itemName: string?, universeId: number?, analyticId: string?)
    local upsellPlatform = paymentPlatformToUpsellPlatform(paymentPlatform)

	-- Create a promise that will resolve with the upsell suggestions
	local promise = Promise.new(function(resolve, reject)
		-- Spawn a new thread to avoid blocking the main thread
		spawn(function()
			local success, response = GetUpsellSuggestions(upsellPlatform, robuxBalance, price, UpsellSuggestionsAPIMaxPackages, itemProductId, itemName, universeId, analyticId)
			if not success then
				return reject(PurchaseError.UnknownFailure)
			end
	
			-- If no products are returned, we should treat that as an error to be consistent with the existing upsell flow
			if not response or not response.products or #response.products == 0 then
				return reject(PurchaseError.UnknownFailure)
			end

			return resolve(response)
		end)
	end)

	return promise
end
