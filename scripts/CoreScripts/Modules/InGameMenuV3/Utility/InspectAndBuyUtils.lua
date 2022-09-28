local CorePackages = game:GetService("CorePackages")

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local OWNED_ICON = Images["icons/menu/avatar_on"]
local ROBUX_ICON = Images["icons/common/robux"]

local InspectAndBuyUtils = {}

function InspectAndBuyUtils.getItemLabelData(purchaseInfo, localized): (string?, string?, boolean?)
	if not purchaseInfo or not localized then
		return nil
	end

	local icon, text
	local isBuyButtonDisabled = false
	if purchaseInfo.owned then
		icon = OWNED_ICON
		text = ""
		isBuyButtonDisabled = true
	elseif purchaseInfo.isLimited then
		icon = nil
		text = localized.limitedText
		isBuyButtonDisabled = true
	elseif purchaseInfo.isLoading or purchaseInfo.offsale then
		icon = nil
		text = localized.offSaleText
		isBuyButtonDisabled = true
	elseif purchaseInfo.premiumExclusiveWhileNotPremium then
		icon = nil
		text = localized.premiumOnlyText
		isBuyButtonDisabled = true
	elseif purchaseInfo.robuxPrice == 0 then
		icon = nil
		text = localized.freeText
	elseif purchaseInfo.robuxPrice then
		icon = ROBUX_ICON
		text = string.format("%.0f", purchaseInfo.robuxPrice)
	end

	return icon, text, isBuyButtonDisabled
end

return InspectAndBuyUtils
