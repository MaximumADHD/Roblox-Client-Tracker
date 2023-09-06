return function()
	local ScreenSize = require(script.Parent.ScreenSize)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local AvatarEditorPrompts = script.Parent.Parent
	local Actions = AvatarEditorPrompts.Actions
	local ScreenSizeUpdated = require(Actions.ScreenSizeUpdated)

	it("should have the correct default value", function()
		local defaultState = ScreenSize(nil, {})
		expect(defaultState).toBe(Vector2.new(0, 0))
	end)

	describe("ScreenSizeUpdated", function()
		it("should change the value screenSize", function()
			local oldState = ScreenSize(nil, {})
			local newState = ScreenSize(oldState, ScreenSizeUpdated(Vector2.new(1500, 1200)))
			expect(oldState).never.toEqual(newState)
			expect(newState).toBe(Vector2.new(1500, 1200))
		end)
	end)
end
