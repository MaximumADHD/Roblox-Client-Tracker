local Root = script.Parent.Parent

local PurchaseError = require(Root.Enums.PurchaseError)
local PaymentPlatform = require(Root.Enums.PaymentPlatform)

local RobuxUpsell = require(Root.Models.RobuxUpsell)

local Promise = require(Root.Promise)

-- See https://github.rbx.com/Roblox/payments-gateway/blob/master/services/payments-gateway-api/src/Models/Requests/GetUpsellProductRequest.cs for types
local function paymentPlatformToUpsellPlatform(paymentPlatform)
    if paymentPlatform == PaymentPlatform.Web then
        return "Web"
    elseif paymentPlatform == PaymentPlatform.Apple then
        return "AppleAppStore"
    elseif paymentPlatform == PaymentPlatform.Google then
        return "GooglePlayStore"
    elseif paymentPlatform == PaymentPlatform.Amazon then
        return "AmazonStore"
    elseif paymentPlatform == PaymentPlatform.UWP then
        return "WindowsStore"
    elseif paymentPlatform == PaymentPlatform.Xbox then
        return "XboxStore"
    elseif paymentPlatform == PaymentPlatform.Maquettes then
        return "MaquettesStore"
    elseif paymentPlatform == PaymentPlatform.Palisades then
        return "PalisadesStore"
    else
        return "None"
    end
end

local function getRobuxUpsellProduct(network, price, robuxBalance, paymentPlatform)
	local upsellPlatform = paymentPlatformToUpsellPlatform(paymentPlatform)
	return network.getRobuxUpsellProduct(price, robuxBalance, upsellPlatform)
		:andThen(function(result)
			local upsellProduct: RobuxUpsell.Product = RobuxUpsell.fromJson(result)
			if upsellProduct then
				return Promise.resolve(upsellProduct)
			else
				return Promise.reject(PurchaseError.UnknownFailure)
			end
		end)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getRobuxUpsellProduct
