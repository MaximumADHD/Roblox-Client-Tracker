local PurchaseError = require(script.Parent.PurchaseError)

--[[
	Return the reason why an item is not purchasable.
]]
local function getPurchasableStatus(productPurchasableDetails)
	local reason = productPurchasableDetails.reason

	if reason == "InsufficientFunds" then
		return PurchaseError.NotEnoughRobux
	elseif reason == "AlreadyOwned" then
		return PurchaseError.AlreadyOwn
	elseif reason == "NotForSale" then
		return PurchaseError.NotForSale
	elseif reason == "ContentRatingRestricted" then
		return PurchaseError.Under13
	else
		return PurchaseError.UnknownFailure
	end
end

return getPurchasableStatus