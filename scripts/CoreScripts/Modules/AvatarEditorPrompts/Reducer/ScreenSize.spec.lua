return function()
	local ScreenSize = require(script.Parent.ScreenSize)

	local AvatarEditorPrompts = script.Parent.Parent
	local Actions = AvatarEditorPrompts.Actions
	local ScreenSizeUpdated = require(Actions.ScreenSizeUpdated)

	it("should have the correct default value", function()
		local defaultState = ScreenSize(nil, {})
		expect(defaultState).to.equal(Vector2.new(0, 0))
	end)

	describe("ScreenSizeUpdated", function()
		it("should change the value screenSize", function()
			local oldState = ScreenSize(nil, {})
			local newState = ScreenSize(oldState, ScreenSizeUpdated(Vector2.new(1500, 1200)))
			expect(oldState).to.never.equal(newState)
			expect(newState).to.equal(Vector2.new(1500, 1200))
		end)
	end)
end