local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local addRawValueMethodToEnum = require(IAPExperienceRoot.Utility.addRawValueMethodToEnum)
local enumerate = require(Packages.enumerate)

local rawKeyToRawValue = {
	None = "None",
    Unknown = "Unknown",
}

-- The values here correspond to values in the requested web view.
local PurchaseErrorType = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(PurchaseErrorType, rawKeyToRawValue)

return PurchaseErrorType
