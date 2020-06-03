local XboxCatalogData = require(script.Parent.XboxCatalogData)
local NativeProducts = require(script.Parent.NativeProducts)

local Promise = require(script.Parent.Parent.Promise)

local function sortAscending(a, b)
	return a.robuxValue < b.robuxValue
end

local function selectProduct(neededRobux, availableProducts)
	table.sort(availableProducts, sortAscending)

	for _, product in ipairs(availableProducts) do
		if product.robuxValue >= neededRobux then
			return Promise.resolve(product)
		end
	end

	return Promise.reject()
end

local function selectRobuxProduct(platform, neededRobux, userIsSubscribed)
	-- Premium is not yet enabled for XBox, so we always use the existing approach
	if platform == Enum.Platform.XBoxOne then
		return XboxCatalogData.GetCatalogInfoAsync()
			:andThen(function(availableProducts)
				return selectProduct(neededRobux, availableProducts)
			end)
	end

	local productOptions
	if platform == Enum.Platform.IOS then
		productOptions = userIsSubscribed
			and NativeProducts.IOS.PremiumSubscribed
			or NativeProducts.IOS.PremiumNotSubscribed
	else -- This product format is standard for other supported platforms (Android, Amazon, and UWP)
		if platform == Enum.Platform.Android then
			-- Contains upsell for 4500 and 10000 packages only available on android
			productOptions = userIsSubscribed
				and NativeProducts.Standard.PremiumSubscribedLarger
				or NativeProducts.Standard.PremiumNotSubscribedLarger
		else
			productOptions = userIsSubscribed
				and NativeProducts.Standard.PremiumSubscribed
				or NativeProducts.Standard.PremiumNotSubscribed
		end
	end

	return selectProduct(neededRobux, productOptions)
end

return selectRobuxProduct