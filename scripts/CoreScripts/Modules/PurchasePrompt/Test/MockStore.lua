local Root = script.Parent.Parent

local PurchaseFlow = require(Root.Enums.PurchaseFlow)

local MockStore = {}

function MockStore.getMockPurchaseFlow(purchaseFlow: any?)
    return purchaseFlow or PurchaseFlow.Product
end

function MockStore.getMockNativeUpsell(robuxProductId: string?, productId: string?, robuxPurchaseAmount: number?)
    return {
        robuxProductId = "testRobuxProductId" or robuxProductId,
        productId = "testProductId" or productId,
        robuxPurchaseAmount = 500 or robuxPurchaseAmount,
    }
end

return MockStore
