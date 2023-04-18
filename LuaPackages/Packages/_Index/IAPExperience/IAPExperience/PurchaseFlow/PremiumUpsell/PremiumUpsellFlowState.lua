local PremiumUpsellRoot = script.Parent
local PurchaseFlowRoot = PremiumUpsellRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local addRawValueMethodToEnum = require(IAPExperienceRoot.Utility.addRawValueMethodToEnum)
local enumerate = require(Packages.enumerate)

local rawKeyToRawValue = {
	None = "None",
	PurchaseModal = "PurchaseModal",
	Error = "Error",
}

-- The values here correspond to values in the requested web view.
local PremiumUpsellFlowState = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(PremiumUpsellFlowState, rawKeyToRawValue)

return PremiumUpsellFlowState
