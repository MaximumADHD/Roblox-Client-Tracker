return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenu = script.Parent.Parent
	local SetGameNameAndDescription = require(InGameMenu.Actions.SetGameNameAndDescription)
	local gameInfo = require(script.Parent.gameInfo)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	describe("SetGameNameAndDescription", function()
		it("should correctly set the game name and description", function()
			local testName = "Test Name"
			local testDescription = "This is a test game!"

			local oldState = gameInfo(nil, {})
			local newState = gameInfo(oldState, SetGameNameAndDescription(testName, testDescription))
			expect(oldState).never.toBe(newState)
			expect(newState).toEqual({
				name = testName,
				description = testDescription,
			})
		end)
	end)
end
