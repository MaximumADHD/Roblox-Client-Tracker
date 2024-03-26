local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local Root = script.Parent.Parent
local Reducer = require(Root.Reducers.Reducer)
local ABTest = require(Root.Services.ABTest)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local PlatformInterface = require(Root.Services.PlatformInterface)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Thunk = require(Root.Thunk)
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

function MockStore.getMockStore()
    local abTest = ABTest.new()
    local network = Network.new()
    local analytics = Analytics.new()
    local platformInterface = PlatformInterface.new()
    local externalSettings = ExternalSettings.new()

    return Rodux.Store.new(Reducer, {}, {
        Thunk.middleware({
            [ABTest] = abTest,
            [Network] = network,
            [Analytics] = analytics,
            [PlatformInterface] = platformInterface,
            [ExternalSettings] = externalSettings,
        }),
    })
end

return MockStore
