local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local safeGetFastFlag = require(script.Parent.safeGetFastFlag)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

describe("safeGetFastFlag", function()
	it("should return false when the flag does not exist", function()
		local result = safeGetFastFlag("HopefullyThisIsANonExistentFlagThatNobodyWillEverActuallyDefine")
		expect(result).toEqual(false)
	end)

	it("should return false when the flag is set to false", function()
		game:DefineFastFlag("DebugSafeGetFastFlagFalse", false)
		game:SetFastFlagForTesting("DebugSafeGetFastFlagFalse", false) -- In case flag overrides interfere

		local result = safeGetFastFlag("DebugSafeGetFastFlagFalse")
		expect(result).toEqual(false)
	end)

	it("should return true when the flag is set to true", function()
		game:DefineFastFlag("DebugSafeGetFastFlagTrue", false)
		game:SetFastFlagForTesting("DebugSafeGetFastFlagTrue", true) -- In case flag overrides interfere

		local result = safeGetFastFlag("DebugSafeGetFastFlagTrue")
		expect(result).toEqual(true)
	end)
end)
