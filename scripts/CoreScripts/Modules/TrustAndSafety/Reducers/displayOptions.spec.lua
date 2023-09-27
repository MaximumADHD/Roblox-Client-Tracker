return function()
	local CorePackages = game:GetService("CorePackages")

	local TnsModule = script.Parent.Parent
	local SetScreenSize = require(TnsModule.Actions.SetScreenSize)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local displayOptions = require(script.Parent.displayOptions)

	describe("screenSize", function()
		it("should update", function()
			local screenSize = Vector2.new(1920, 1080)
			local oldState = displayOptions(nil, {})
			local newState = displayOptions(oldState, SetScreenSize(screenSize))
			expect(oldState).never.toBe(newState)
			expect(newState.screenSize).toBe(screenSize)
		end)
	end)
end
