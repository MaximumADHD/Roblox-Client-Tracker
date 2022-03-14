local Root = script.Parent.Parent
local XboxCatalogData = require(script.Parent.XboxCatalogData)
local NativeProducts = require(script.Parent.NativeProducts)

local HttpService = game:GetService("HttpService")

local Promise = require(Root.Promise)

local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)

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

	return Promise.reject("No Product Available")
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
		if GetFFlagEnableLuobuInGameUpsell() then
			productOptions = NativeProducts.Midas
		else
			productOptions = userIsSubscribed
				and NativeProducts.IOS.PremiumSubscribed
				or NativeProducts.IOS.PremiumNotSubscribed
		end
	elseif platform == Enum.Platform.Windows or platform == Enum.Platform.OSX or platform == Enum.Platform.Linux then
		productOptions = userIsSubscribed
			and NativeProducts.Desktop.PremiumSubscribed
			or NativeProducts.Desktop.PremiumNotSubscribed
	else -- This product format is standard for other supported platforms (Android, Amazon, and UWP)
		if platform == Enum.Platform.Android then
			-- Using a flag for now, working on implementing platform call to get what payment options are available.
			if GetFFlagEnableLuobuInGameUpsell() then
				productOptions = NativeProducts.Midas
			else
				local isAmazon = false

				local useragent = HttpService:GetUserAgent()
				if string.find(useragent, "AmazonAppStore") then
					isAmazon = true
				end

				if isAmazon then
					productOptions = userIsSubscribed
						and NativeProducts.Standard.PremiumSubscribed
						or NativeProducts.Standard.PremiumNotSubscribed
				else
					-- Contains upsell for 4500 and 10000 packages only available on android
					productOptions = userIsSubscribed
						and NativeProducts.Standard.PremiumSubscribedLarger
						or NativeProducts.Standard.PremiumNotSubscribedLarger
				end
			end
		else
			productOptions = userIsSubscribed
				and NativeProducts.Standard.PremiumSubscribed
				or NativeProducts.Standard.PremiumNotSubscribed
		end
	end

	return selectProduct(neededRobux, productOptions)
end

return selectRobuxProduct
