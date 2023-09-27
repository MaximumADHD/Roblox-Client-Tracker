return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local SetGameName = require(Actions.SetGameName)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local GameInfo = require(script.Parent.GameInfo)

	it("should have the correct default values", function()
		local defaultState = GameInfo(nil, {})
		expect(defaultState).toMatchObject({ name = "Experience" })
	end)

	describe("SetGameName", function()
		it("should change the value of name", function()
			local oldState = GameInfo(nil, {})
			local newState = GameInfo(oldState, SetGameName("Test"))
			expect(oldState).never.toBe(newState)
			expect(newState.name).toBe("Test")
		end)
	end)
end
