local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local enumerate = PurchasePromptDeps.enumerate

local addRawValueMethodToEnum = require(Root.Utils.addRawValueMethodToEnum)

local rawKeyToRawValue = {
	None = "None",
	EnablePurchase = "EnablePurchase",
}

-- The values here correspond to values in the requested web view.
local VPCModalType = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(VPCModalType, rawKeyToRawValue)

return VPCModalType
