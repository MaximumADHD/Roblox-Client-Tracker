local BuyRobux = script.Parent
local PurchaseFlowRoot = BuyRobux.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local addRawValueMethodToEnum = require(IAPExperienceRoot.Utility.addRawValueMethodToEnum)
local enumerate = require(Packages.enumerate)

local rawKeyToRawValue = {
	None = "None",
	Loading = "Loading",
	BuyRobux = "BuyRobux",
	PurchaseWarning = "PurchaseWarning",
	RobuxPurchasePending = "RobuxPurchasePending",
	RobuxGrantPending = "RobuxGrantPending",
	Error = "Error",
	Succeed = "Succeed",
	PurchaseVPC = "PurchaseVPC",
}

-- The values here correspond to values in the requested web view.
local BuyRobuxFlowState = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(BuyRobuxFlowState, rawKeyToRawValue)

return BuyRobuxFlowState
