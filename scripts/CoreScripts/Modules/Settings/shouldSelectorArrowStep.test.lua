local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local FFlagSettingsSelectorStepOnPressOnly = require(script.Parent.Flags.FFlagSettingsSelectorStepOnPressOnly)
local shouldSelectorArrowStep = require(script.Parent.shouldSelectorArrowStep)

local MouseButton1 = Enum.UserInputType.MouseButton1
local Touch = Enum.UserInputType.Touch
local MouseMovement = Enum.UserInputType.MouseMovement
local Gamepad1 = Enum.UserInputType.Gamepad1

type InputMode = { isTap: boolean, isPointer: boolean }

-- The tap, pointer, and directional input modes.
local inputModes: { InputMode } = {
	{ isTap = true, isPointer = false },
	{ isTap = false, isPointer = true },
	{ isTap = false, isPointer = false },
}

describe("shouldSelectorArrowStep", function()
	if FFlagSettingsSelectorStepOnPressOnly then
		it("SHOULD step on a mouse click or a touch in every input mode", function()
			for _, mode in inputModes do
				expect(shouldSelectorArrowStep(MouseButton1, mode.isTap, mode.isPointer)).toBe(true)
				expect(shouldSelectorArrowStep(Touch, mode.isTap, mode.isPointer)).toBe(true)
			end
		end)

		it("SHOULD NOT step on hover WHEN the input mode is still tap", function()
			expect(shouldSelectorArrowStep(MouseMovement, true, false)).toBe(false)
		end)

		it("SHOULD NOT step on gamepad input reaching the arrow", function()
			for _, mode in inputModes do
				expect(shouldSelectorArrowStep(Gamepad1, mode.isTap, mode.isPointer)).toBe(false)
			end
		end)
	else
		it("SHOULD step on any input WHEN the input mode is tap", function()
			expect(shouldSelectorArrowStep(Touch, true, false)).toBe(true)
			expect(shouldSelectorArrowStep(MouseMovement, true, false)).toBe(true)
		end)

		it("SHOULD step only on a mouse click WHEN the input mode is pointer", function()
			expect(shouldSelectorArrowStep(MouseButton1, false, true)).toBe(true)
			expect(shouldSelectorArrowStep(MouseMovement, false, true)).toBe(false)
		end)

		it("SHOULD NOT step on a click WHEN the input mode is directional", function()
			expect(shouldSelectorArrowStep(MouseButton1, false, false)).toBe(false)
		end)
	end
end)
