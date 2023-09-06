local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local enumerate = require(Packages.enumerate)

local rawKeyToRawValue = {
	Subscription = "Subscription",
}

local PurchaseFlowType = enumerate(script.Name, rawKeyToRawValue)

return PurchaseFlowType
