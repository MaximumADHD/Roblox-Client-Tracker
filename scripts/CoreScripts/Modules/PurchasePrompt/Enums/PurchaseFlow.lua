local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local enumerate = PurchasePromptDeps.enumerate

local addRawValueMethodToEnum = require(Root.Utils.addRawValueMethodToEnum)

local rawKeyToRawValue = {
    None = "None",
    Product = "Product",
    RobuxUpsell = "RobuxUpsell",
    RobuxUpsellV2 = "RobuxUpsellV2",
    LargeRobuxUpsell = "LargeRobuxUpsell",
    PremiumUpsell = "PremiumUpsell",
}

-- The values here correspond to values in the requested web view.
local PurchaseFlow = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(PurchaseFlow, rawKeyToRawValue)

return PurchaseFlow
