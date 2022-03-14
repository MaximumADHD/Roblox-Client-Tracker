local Root = script.Parent.Parent
local HttpService = game:GetService("HttpService")

local XboxCatalogData = require(script.Parent.XboxCatalogData)
local NativeProducts = require(script.Parent.NativeProducts)

local PaymentPlatform = require(Root.Enums.PaymentPlatform)
local Promise = require(Root.Promise)

local FStringInGameIAPList = game:DefineFastString("InGameIAPList", "")
local FStringInGameAmazonIAPList = game:DefineFastString("InGameAmazonIAPList", "")
local FStringInGameLuobuIAPList = game:DefineFastString("InGameLuobuIAPList", "")

local function sortAscending(a, b)
	return a.robuxValue < b.robuxValue
end

local function selectMinimumProductNeeded(neededRobux: number, availableProducts)
	table.sort(availableProducts, sortAscending)

	for _, product in ipairs(availableProducts) do
		if product.robuxValue >= neededRobux then
			return Promise.resolve(product)
		end
	end

	return Promise.reject("No Product Available")
end

-- Used to keep existing functionality of FFlags, but allow to change for unit testing (and later refactor to pass in flags)
return function(paymentPlatform, neededRobux: number, userIsSubscribed: boolean, dynamicProductListStr: string?)
    if not dynamicProductListStr then
        -- Always Midas before Amazon, Midas can exist on Amazon
        if paymentPlatform == PaymentPlatform.Midas then
            dynamicProductListStr = FStringInGameLuobuIAPList
        elseif paymentPlatform == PaymentPlatform.Amazon then
            dynamicProductListStr = FStringInGameAmazonIAPList
        else
            dynamicProductListStr = FStringInGameIAPList
        end
    end

    -- Use dynamic IAP list
    if dynamicProductListStr and string.len(dynamicProductListStr) > 0 then
        local dynamicProductList = HttpService:JSONDecode(dynamicProductListStr)
        return selectMinimumProductNeeded(neededRobux, dynamicProductList)
    end

    -- Default to static list
    local productList = nil
    if paymentPlatform == PaymentPlatform.Xbox then
        return XboxCatalogData.GetCatalogInfoAsync():andThen(function(availableProducts)
            return selectMinimumProductNeeded(neededRobux, availableProducts)
        end)
    elseif paymentPlatform == PaymentPlatform.Midas then
        productList = NativeProducts.Midas
    elseif paymentPlatform == PaymentPlatform.Apple then
        productList = userIsSubscribed
            and NativeProducts.IOS.PremiumSubscribed
            or NativeProducts.IOS.PremiumNotSubscribed
    elseif paymentPlatform == PaymentPlatform.Web then
        productList = userIsSubscribed
            and NativeProducts.Desktop.PremiumSubscribed
            or NativeProducts.Desktop.PremiumNotSubscribed
    elseif paymentPlatform == PaymentPlatform.Google then
        productList = userIsSubscribed
            and NativeProducts.Standard.PremiumSubscribedLarger
            or NativeProducts.Standard.PremiumNotSubscribedLarger
    else -- UWP and Amazon
        productList = userIsSubscribed
            and NativeProducts.Standard.PremiumSubscribed
            or NativeProducts.Standard.PremiumNotSubscribed
    end

    return selectMinimumProductNeeded(neededRobux, productList)
end
