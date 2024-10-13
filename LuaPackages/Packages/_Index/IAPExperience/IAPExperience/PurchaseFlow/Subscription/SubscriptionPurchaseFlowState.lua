local SubscriptionRoot = script.Parent
local PurchaseFlowRoot = SubscriptionRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local addRawValueMethodToEnum = require(IAPExperienceRoot.Utility.addRawValueMethodToEnum)
local enumerate = require(Packages.enumerate)

local rawKeyToRawValue = {
	None = "None",
	PurchaseModal = "PurchaseModal",
	Error = "Error",
	PurchaseVPCModal = "PurchaseVPCModal",
}

-- The values here correspond to values in the requested web view.
local SubscriptionPurchaseFlowState = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(SubscriptionPurchaseFlowState, rawKeyToRawValue)

return SubscriptionPurchaseFlowState
