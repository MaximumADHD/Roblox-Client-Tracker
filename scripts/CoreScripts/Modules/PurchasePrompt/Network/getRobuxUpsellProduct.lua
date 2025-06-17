local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")

local PurchaseError = require(Root.Enums.PurchaseError)

local RobuxUpsell = require(Root.Models.RobuxUpsell)

local Promise = require(Root.Promise)

local paymentPlatformToUpsellPlatform = require(Root.Utils.paymentPlatformToUpsellPlatform)

local function GetRobuxUpsellProduct(network, price: number, robuxBalance: number, paymentPlatform: string, itemProductId: number?, itemName: string?, universeId: number?)
    local upsellPlatform = paymentPlatformToUpsellPlatform(paymentPlatform)

    local promise = network.getRobuxUpsellProduct(price, robuxBalance, upsellPlatform, itemProductId, itemName, universeId)
    
    return promise
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

return GetRobuxUpsellProduct
