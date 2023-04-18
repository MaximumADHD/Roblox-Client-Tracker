local RobuxUpsellRoot = script.Parent
local PurchaseFlowRoot = RobuxUpsellRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local addRawValueMethodToEnum = require(IAPExperienceRoot.Utility.addRawValueMethodToEnum)
local enumerate = require(Packages.enumerate)

local rawKeyToRawValue = {
	None = "None",
	Loading = "Loading",
	PurchaseModal = "PurchaseModal",
	GenericPurchaseModal = "GenericPurchaseModal",
	LargeRobuxPurchaseModal = "LargeRobuxPurchaseModal",
	PurchaseWarning = "PurchaseWarning",
	TwoStepRequired = "TwoStepRequired",
	RobuxPurchasePending = "RobuxPurchasePending",
	RobuxGrantPending = "RobuxGrantPending",
	ItemPurchasePending = "ItemPurchasePending",
	Success = "Success",
	Error = "Error",
}

-- The values here correspond to values in the requested web view.
local RobuxUpsellFlowState = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(RobuxUpsellFlowState, rawKeyToRawValue)

return RobuxUpsellFlowState
