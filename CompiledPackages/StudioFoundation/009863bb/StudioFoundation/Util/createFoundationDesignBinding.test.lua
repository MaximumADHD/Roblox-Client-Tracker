local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local createFoundationDesignBinding = require(script.Parent.createFoundationDesignBinding)

describe("createFoundationDesignBinding", function()
	it("should signal when the stylesheet is updated", function()
		local binding, onStyleSheetChange = createFoundationDesignBinding()
		local getStyleSheet = binding.GetStyleSheet :: any

		-- I gurarantee that these are present, but the typings are loose, so let's check
		expect(getStyleSheet).never.toBeNil()
		expect(binding.Changed).never.toBeNil()

		local bindingStyleSheet
		local onChange = jest.fn(function()
			-- Get a new value here to make sure the value is updated as soon as you get the signal
			bindingStyleSheet = getStyleSheet()
		end)

		local connection = (binding.Changed :: any):Connect(onChange)

		expect(getStyleSheet()).toBeNil()

		local newStyleSheet = Instance.new("StyleSheet")
		onStyleSheetChange(newStyleSheet)

		expect(onChange).toBeCalledTimes(1)
		expect(bindingStyleSheet).toBe(newStyleSheet)

		connection:Disconnect()
	end)
end)
