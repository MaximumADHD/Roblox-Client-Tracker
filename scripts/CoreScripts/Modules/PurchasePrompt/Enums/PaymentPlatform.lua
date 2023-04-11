--[[
	Enumeration of possible payment platforms
]]
local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local enumerate = PurchasePromptDeps.enumerate

local addRawValueMethodToEnum = require(Root.Utils.addRawValueMethodToEnum)

local rawKeyToRawValue = {
	None = "None",
	Apple = "Apple",
	Google = "Google",
	Amazon = "Amazon",
	Xbox = "Xbox",
	UWP = "UWP",
	Midas = "Midas",
	Web = "Web",
	Maquettes = "Maquettes",
	Palisades = "Palisades",
}

-- The values here correspond to values in the requested web view.
local PaymentPlatform = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(PaymentPlatform, rawKeyToRawValue)

return PaymentPlatform
