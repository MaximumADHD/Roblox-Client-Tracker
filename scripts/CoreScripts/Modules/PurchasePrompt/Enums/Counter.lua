local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local enumerate = PurchasePromptDeps.enumerate

local addRawValueMethodToEnum = require(Root.Utils.addRawValueMethodToEnum)

local rawKeyToRawValue = {
	UpsellModalShown = "UpsellModalShown",
	UpsellModalShownAgain = "UpsellModalShownAgain",
	UpsellGenericModalShown = "UpsellGenericModalShown",
	UpsellGenericModalShownAgain = "UpsellGenericModalShownAgain",
	Cancelled = "Cancelled",
	UpsellFailedNotEnoughRobux = "UpsellFailedNotEnoughRobux",
	UpsellFailedNativePurchase = "UpsellFailedNativePurchase",
	Failed = "Failed",
	Success = "Success",
}

-- The values here correspond to values in the requested web view.
local Counter = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(Counter, rawKeyToRawValue)

return Counter
