local Root = script.Parent.Parent

local PurchaseError = require(Root.Enums.PurchaseError)
local Constants = require(Root.Misc.Constants)
local Promise = require(Root.Promise)
local isGenericChallengeResponse = require(Root.Utils.isGenericChallengeResponse)

local FFlagEnableTempFixCollectibleBundlePurchase = require(Root.Parent.Flags.FFlagEnableTempFixCollectibleBundlePurchase)
local FFlagEnableCollectibleCheckToPurchaseItem = require(Root.Parent.Flags.FFlagEnableCollectibleCheckToPurchaseItem)

--[[
	we will migrate to V2 for all usage.
]]
local function performPurchaseV2(
	network,
	infoType,
	productId,
	expectedPrice,
	requestId,
	isRobloxPurchase,
	collectibleItemId,
	collectibleProductId,
	idempotencyKey,
	purchaseAuthToken,
	collectibleItemInstanceId
)

	if not FFlagEnableCollectibleCheckToPurchaseItem then
		-- Remove the temporary fix with the flag: FFlagEnableCollectibleCheckToPurchaseItem
		if FFlagEnableTempFixCollectibleBundlePurchase then
			-- Temporary fix for purchasing collectible bundles until a new game-engine version is released
			local isCollectibleBundle = (infoType == Enum.InfoType.Bundle) and collectibleItemId and (collectibleItemId ~= "")
			if isCollectibleBundle then
				infoType = Enum.InfoType.Asset
				collectibleItemInstanceId = nil
			end
		end
	end

	return network
		.performPurchaseV2(
			infoType,
			productId,
			expectedPrice,
			requestId,
			isRobloxPurchase,
			collectibleItemId,
			collectibleProductId,
			idempotencyKey,
			purchaseAuthToken,
			collectibleItemInstanceId
		)
		:andThen(function(result)
			--[[
				User might purchase the product through the web after having
				opened the purchase prompt, so an AlreadyOwned status is
				acceptable.
			]]
			if result.purchased or result.reason == "AlreadyOwned" then
				return Promise.resolve(result)
			elseif result.reason == Constants.PurchaseFailureReason.EconomyDisabled then
				return Promise.reject(PurchaseError.PurchaseDisabled)
			elseif result.reason == Constants.PurchaseFailureReason.TwoStepVerificationRequired then
				return Promise.reject(PurchaseError.TwoFactorNeeded)
			elseif result.transactionStatus == 24 then
				return Promise.reject(PurchaseError.TwoFactorNeeded)
			elseif isGenericChallengeResponse(result) then
				-- For Generic Challenge responses the entire result is required for rendering.
				return Promise.reject(result)
			else
				return Promise.reject(PurchaseError.UnknownFailure)
			end
		end, function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return performPurchaseV2
