-- Copy from Modules.LuaApp ModuleScript
-- Please use this moving forward since IAPExperience cannot reference Modules.LuaApp
-- TODO: Migrate all existing reference to this file and remove the one in Modules.LuaApp

local CorePackages = game:GetService("CorePackages")
local IAPExperienceRoot = script.Parent.Parent
local addRawValueMethodToEnum = require(IAPExperienceRoot.Utility.addRawValueMethodToEnum)
local enumerate = require(CorePackages.enumerate)

local rawKeyToRawValue = {
	None = "None",
	Apple = "Apple",
	Google = "Google",
	Amazon = "Amazon",
	Xbox = "Xbox",
	UWP = "UWP",
	Web = "Web",
	Maquettes = "Maquettes",
	Palisades = "Palisades",
}

-- The values here correspond to values in the requested web view.
local PaymentPlatform = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(PaymentPlatform, rawKeyToRawValue)

return PaymentPlatform