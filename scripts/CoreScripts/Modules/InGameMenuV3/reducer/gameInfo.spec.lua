return function()
	local InGameMenu = script.Parent.Parent
	local SetGameNameAndDescription = require(InGameMenu.Actions.SetGameNameAndDescription)
	local gameInfo = require(script.Parent.gameInfo)

	describe("SetGameNameAndDescription", function()
		it("should correctly set the game name and description", function()
			local testName = "Test Name"
			local testDescription = "This is a test game!"

			local oldState = gameInfo(nil, {})
			local newState = gameInfo(oldState, SetGameNameAndDescription(testName, testDescription))
			expect(oldState).to.never.equal(newState)
			expect(newState.name).to.equal(testName)
			expect(newState.description).to.equal(testDescription)
		end)
	end)
end